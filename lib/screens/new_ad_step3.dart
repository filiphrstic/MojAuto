import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart' show HookWidget, useState;
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:i18next/i18next.dart';
import 'package:image_picker/image_picker.dart';
import '../navigation/routes.dart';
import '../utils/themes.dart';
import '../widgets/navigation/navigation_menu.dart';
import '../widgets/navigation/appbar_search.dart';

const String getSASTokenQuery = """
  query getSASToken(\$filename: String!) {
    getSASToken(
      data: { 
        filename: \$filename
      }
    ){
      url
      expiresOn
      startsOn
      blobName
    }
  }
""";

class NewAdStep3Screen extends HookWidget {
  final Map<String, dynamic> controllersList;
  const NewAdStep3Screen({required this.controllersList, Key? key}) : super(key: key);

  Future<String> _showPhotoLibrary() async {
    final file = await ImagePicker().pickImage(source: ImageSource.gallery);
    return file?.path ?? "";
  }

  @override
  Widget build(BuildContext context) {
    final i18next = I18Next.of(context);
    final imageForDisplay = useState("");
    final imageForGraphQL = useState("");
    final sasBlobName = useState("");
    final sasUrl = useState("");
    List<String> imageNameHelper;

    final getSASTokenResult = useQuery(
      QueryOptions(
        document: gql(getSASTokenQuery),
        variables: <String, dynamic>{"filename": imageForGraphQL.value},
      ),
    );

    final result = getSASTokenResult.result;

    if (result.hasException) {
      return Text(result.exception.toString());
    }

    if (result.isLoading) {
      return const Center(child: CircularProgressIndicator.adaptive());
    }

    if (result.data == null) {
      return Center(
        child: Text(
          "No data",
          style: Theme.of(context).textTheme.bodyText2,
        ),
      );
    }

    sasBlobName.value = result.data!['getSASToken']['blobName'];
    sasUrl.value = result.data!['getSASToken']['url'];

    return Scaffold(
      appBar: AppBar(
        actions: const [AppbarSearch()],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Text(
                  i18next!
                      .t(
                        'i18n:whatAreYouSelling',
                      )
                      .toUpperCase(),
                  style: CustomDarkTextStyle.h1(context),
                ),
              ),
            ),
            if (imageForDisplay.value != "")
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SafeArea(
                  child: Image.file(
                    File(imageForDisplay.value),
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: lightTextColor,
                  side: const BorderSide(width: 2, color: orangeThemeColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                icon: const Icon(
                  Icons.add,
                  color: orangeThemeColor,
                ),
                label: Text(
                  i18next.t(
                    'i18n:addPhoto',
                  ),
                  style: const TextStyle(
                    color: orangeThemeColor,
                    fontSize: 18,
                  ),
                ),
                onPressed: () async {
                  imageForDisplay.value = await _showPhotoLibrary();
                  imageNameHelper = imageForDisplay.value.split('/');
                  imageForGraphQL.value = imageNameHelper.last;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 100),
              child: Container(
                decoration: BoxDecoration(
                  color: orangeThemeColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                  ),
                  onPressed: () async => {
                    if (imageForDisplay.value.isEmpty)
                      {
                        Navigator.pushNamed(context, newAdStep4ScreenRoute, arguments: controllersList),
                      }
                    else
                      {
                        getSASTokenResult.refetch,
                        await uploadImage(sasUrl.value, File(imageForDisplay.value)),
                        controllersList.addAll({
                          "filename": imageForGraphQL.value,
                          "filesize": File(imageForDisplay.value).lengthSync(),
                          "code": "AdFilePhoto",
                          "path": sasBlobName.value
                        }),
                        controllersList.removeWhere((key, value) => value.toString().isEmpty),
                        Navigator.pushNamed(context, newAdStep4ScreenRoute, arguments: controllersList),
                      }
                  },
                  child: Text(
                    i18next.t(
                      'i18n:next',
                    ),
                    style: CustomWhiteTextStyle.bodyLarge(context),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavigationMenu(selectedIndex: 2),
    );
  }

  Future<void> uploadImage(String sasUrl, File image) async {
    final dio = Dio();
    final fileBytes = image.readAsBytesSync();
    var streamData = Stream.fromIterable(fileBytes.map((e) => [e]));
    await dio.put(sasUrl,
        data: streamData,
        options: Options(headers: {Headers.contentLengthHeader: fileBytes.length, "x-ms-blob-type": "BlockBlob", "content-type": "image/jpeg"}));
  }
}
