import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String query = '';

  List<String> data = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Elderberry',
    'Fig',
    'Grapes',
    'Honeydew',
    'Kiwi',
    'Lemon',
  ];

  List<String> searchResults = [];

  void onQueryChange(String newQuery) {
    setState(() {
      query = newQuery;
      searchResults = data
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextFormField(
        onChanged: onQueryChange,
        decoration: const InputDecoration(
            filled: true,
            fillColor: Color(0xFFE4E7EC),
            labelText: 'Search the entire shop',
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            prefixIcon: Icon(Icons.search)),
      ),
    );
  }
}
