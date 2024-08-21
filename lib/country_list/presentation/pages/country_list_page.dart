import 'package:europ_country/country_details/presentation/pages/country_details_page.dart';
import 'package:europ_country/country_list/data/models/country_model.dart';
import 'package:europ_country/country_list/presentation/cubit/country_list_cubit.dart';
import 'package:europ_country/country_list/presentation/widgets/avatar_flag_image_widget.dart';
import 'package:europ_country/country_list/presentation/widgets/country_list_loading_shimmer.dart';
import 'package:europ_country/country_list/presentation/widgets/sort_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountryListPage extends StatelessWidget {
  const CountryListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.read<CountryListCubit>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("European Country List"),
        actions: [SortIconWidget(tapSortItem: controller.changeSortMethod)],
      ),
      body: BlocBuilder<CountryListCubit, CountryListState>(
        builder: (context, state) {
          if (state is CountryListLoaded) {
            if (state.countryModelList.isEmpty) {
              return const Center(child: Text("No result found"));
            } else {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: state.countryModelList.length,
                itemBuilder: (context, index) {
                  CountryModel country = state.countryModelList[index];
                  return Card(
                    child: ListTile(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CountryDetailsPage(countryModel: country),
                        ),
                      ),
                      leading: AvatarFlagImageWidget(flagUrl: country.flags!.png!),
                      title: Text(country.name?.official ?? "",
                          style: Theme.of(context).textTheme.bodyMedium),
                      subtitle: Text(country.capital?.first ?? "",
                          style: Theme.of(context).textTheme.titleMedium),
                    ),
                  );
                },
              );
            }
          } else if (state is CountryListLoadingFailed) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("We have a problem. Please try again"),
                  Text(state.error),
                  ElevatedButton(
                      onPressed: () => controller.getCountries(),
                      child: const Text("Refresh"))
                ],
              ),
            );
          } else {
            return const CountryListLoadingShimmer();
          }
        },
      ),
    );
  }
}
