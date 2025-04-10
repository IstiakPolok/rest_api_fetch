import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/country_controller.dart';


class CountryScreen extends StatelessWidget {
  final controller = Get.put(CountryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🌍 Countries of the World', ),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: controller.countries.length,
          itemBuilder: (context, index) {
            var country = controller.countries[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: BorderSide(color: Colors.grey, width: 1),
              ),
              elevation: 4,
              child: ListTile(
                leading: Image.network(country.flagUrl, width: 50),
                title: Text(country.name),
                subtitle: Text("${country.region} - ${country.population} people"),
              ),
            );

          },
        );
      }),
    );
  }
}
