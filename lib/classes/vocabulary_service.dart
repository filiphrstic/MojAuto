import 'dart:convert';
import '../classes/vocabularies.dart';
import 'package:http/http.dart' as http;

class VocabularyService {
  static List<Vocabulary> vocabularies = [];

  createVocabularies() async {
    final response = await http.get(Uri.parse('https://repocdn.blob.core.windows.net/files/attribute_definitions.json'));
    if (response.statusCode == 200) {
      final parsedJson = jsonDecode(response.body).cast<Map<String, dynamic>>();
      final vocabularyList = parsedJson.map<Vocabulary>((json) => Vocabulary.fromJson(json)).toList();
      vocabularies = vocabularyList;
    } else {
      throw Exception('Failed to fetch attribute definitions');
    }
  }

  //TO BE REMOVED OR UPDATED LATER
  // String createSearchParamsFormat(List<FindAllCategories$Query$Category> chosenCategories) {
  //   StringBuffer searchParams = StringBuffer("");
  //   String searchParamsString = "";
  //   if (chosenCategories.isNotEmpty) {
  //     searchParams.write("{\"ad_auto\":{\"is\":{");
  //     for (var category in chosenCategories) {
  //       for (var vocabulary in vocabularies) {
  //         if (category.code == vocabulary.categoryCode) {
  //           searchParams.write("\"");
  //           searchParams.write(vocabulary.attribute);
  //           searchParams.write("\":{\"equals\":");
  //           searchParams.write(category.categoryId);
  //           searchParams.write("},");
  //         }
  //       }
  //     }
  //     searchParamsString = searchParams.toString().substring(0, searchParams.length - 1);
  //     searchParamsString += "}}}";
  //   } else {
  //     searchParamsString = "{}";
  //   }
  //   return searchParamsString;
  // }
}
