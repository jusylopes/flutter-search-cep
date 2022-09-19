import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:search_cep/controllers/cep_provider.dart';
import 'package:search_cep/views/home_page.dart';

void main() {
  runApp(const SearchCep());
}

class SearchCep extends StatelessWidget {
  const SearchCep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CepProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Search Cep',
        home: const HomePage(),
        theme: ThemeData(primarySwatch: Colors.yellow),
      ),
    );
  }
}
