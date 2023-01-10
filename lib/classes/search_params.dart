class SearchParams {
  final List<Map<String, dynamic>> listCategoryAttributeAndId = [];
  final Map<String, dynamic> searchParamsAdAuto;

  SearchParams(this.searchParamsAdAuto);

  List<Map<String, dynamic>> getCategoryAttributeAndId() {
    searchParamsAdAuto.forEach((key, value) {
      try {
        listCategoryAttributeAndId.add({key: value['equals']});
      } catch (e) {
        // print(e);
      }
    });
    return listCategoryAttributeAndId;
  }
}
