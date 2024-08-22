import 'package:europ_country/country_details/presentation/widgets/country_flag_widget.dart';
import 'package:europ_country/country_details/presentation/widgets/table_row_widget.dart';
import 'package:europ_country/country_list/data/models/country_model.dart';
import 'package:flutter/material.dart';

class CountryDetailsPage extends StatelessWidget {
  final CountryModel countryModel;

  const CountryDetailsPage({super.key, required this.countryModel});

  @override
  Widget build(BuildContext context) {
    String getLanguages() {
      List<String> languages = [];
      countryModel.languages!.forEach((key, value) {
        languages.add(value);
      });
      return languages.join(", ");
    }

    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(countryModel.name?.official ?? ""),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CountryFlagWidget(flagUrl: countryModel.flags!.png!),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.center,
                child: Text(
                  countryModel.name?.official ?? "",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              Center(
                child: SizedBox(
                  width: size.width * 0.7,
                  child: Column(
                    children: [
                      Table(
                        columnWidths: const {
                          1: FixedColumnWidth(30),
                        },
                        children: [
                          tableRow(
                              "Capital", countryModel.capital?.first ?? ""),
                          tableRow("Religion", countryModel.region ?? ""),
                          tableRow(
                              "Population", countryModel.population.toString()),
                          tableRow("Official Name",
                              countryModel.name?.official ?? ""),
                          tableRow("Languages", getLanguages()),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  TableRow tableRow(String value1, String value2) {
    return TableRow(
      children: [
        TableRowWidget(value: value1),
        const TableRowWidget(value: "-"),
        TableRowWidget(value: value2),
      ],
    );
  }
}
