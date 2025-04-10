import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/country_model.dart';


class CountryController extends GetxController {
  var countries = <Country>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchCountries();
    super.onInit();
  }

  void fetchCountries() async {
    isLoading(true);
    final url = Uri.parse('https://restcountries.com/v3.1/all');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      countries.value = data.map((e) => Country.fromJson(e)).toList();
    } else {
      Get.snackbar('Error', 'Failed to fetch data');
    }
    isLoading(false);
  }
}
