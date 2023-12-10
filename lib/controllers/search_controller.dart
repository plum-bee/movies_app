import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:movies_app/api/api_service.dart';
import 'package:movies_app/models/actor.dart';

class SearchController1 extends GetxController {
  TextEditingController searchController = TextEditingController();
  var searchText = ''.obs;
  var foundActors = <Actor>[].obs;
  var isLoading = false.obs;

  void setSearchText(text) => searchText.value = text;

  void search(String query) async {
    isLoading.value = true;
    foundActors.value = (await ApiService.getSearchedActors(query)) ?? [];
    isLoading.value = false;
  }
}
