import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:i18next/i18next.dart';
import '../../data/graphql/schema.generated.dart';
import '../../utils/themes.dart';

/// Builds blog posts list
class BlogPostsList extends HookWidget {
  const BlogPostsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);
    final I18Next i18next = I18Next.of(context)!;
    final pageController = useState(
      //viewportFraction allows us to add margin while changing pages in a PageView but still keep pages fullscreen
      PageController(viewportFraction: 1.05),
    );

    // Todo: replace query with the proper one for Blog posts when they appear in the db
    final readBlogPostsResult = useQuery(
      QueryOptions(
        document: FindTrendingAdsQuery().document,
        fetchPolicy: FetchPolicy.cacheFirst,
      ),
    );

    final result = readBlogPostsResult.result;

    if (result.hasException) {
      return Text(result.exception.toString());
    }

    if (result.isLoading) {
      return const Center(child: CircularProgressIndicator.adaptive());
    }

    if (result.data == null) {
      return Center(
        child: Text(
          i18next.t("i18n:noData"),
          style: CustomDarkTextStyle.bodyMedium(context),
        ),
      );
    }

    //Todo: replace query with a proper one
    final blogPosts = FindTrendingAds$Query.fromJson(result.data!).findAllAds;
    final numberOfPages = (blogPosts.length / 2).ceil();

    return Center(
      // display the widget only when there are items in the list
      child: blogPosts.isNotEmpty
          ? SizedBox(
              height: 215,
              child: Column(
                children: [
                  SizedBox(
                    height: 185,
                    // pages for pairs of two blog posts
                    child: PageView.builder(
                      itemCount: (blogPosts.length / 2).ceil(),
                      controller: pageController.value,
                      itemBuilder: (context, index) {
                        // getting two ads displayed on current page
                        final firstBlogPost = blogPosts[index + (index * 1)];
                        final secondBlogPost = blogPosts[index + (index * 1) + 1];
                        // adds a margin between pages when scrolling
                        return FractionallySizedBox(
                          widthFactor: 1 / pageController.value.viewportFraction,
                          // two blog posts per page
                          child: GridView(
                              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                crossAxisSpacing: 20,
                              ),
                              children: [
                                // display first blog post
                                InkWell(
                                  child: Container(
                                    height: 160,
                                    width: 160,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(width: 0.5),
                                    ),
                                    child: Text(
                                      "Blog post about \n ${firstBlogPost.title}",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(i18next.t("i18n:functionalityNotImplemented")),
                                    ),
                                  ),
                                ),
                                // limit to 1 element on the last page if the number of blog posts is odd
                                (blogPosts.length.isOdd && numberOfPages == index + 1)
                                    ? const SizedBox.shrink()
                                    // display second blog post
                                    : InkWell(
                                        child: Container(
                                          height: 160,
                                          width: 160,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(width: 0.5),
                                          ),
                                          child: Text(
                                            "Blog post about \n ${secondBlogPost.title}",
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(
                                            content: Text(i18next.t("i18n:functionalityNotImplemented")),
                                          ),
                                        ),
                                      )
                              ]),
                        );
                      },
                      onPageChanged: (int page) => {
                        selectedIndex.value = page,
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 20,
                      child: DotsIndicator(
                        dotsCount: numberOfPages,
                        position: selectedIndex.value.toDouble(),
                        decorator: const DotsDecorator(
                          activeColor: orangeThemeColor,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}
