import 'package:europ_country/core/service_locator.dart';
import 'package:europ_country/country_list/presentation/cubit/country_list_cubit.dart';
import 'package:europ_country/country_list/presentation/pages/country_list_page.dart';
import 'package:europ_country/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'European Country',
      theme: lightTheme,
      home: BlocProvider<CountryListCubit>(
        create: (context) => serviceLocator<CountryListCubit>(),
        child: const CountryListPage(),
      ),
    );
  }
}
