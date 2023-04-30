import 'package:flutter/material.dart';
import 'package:resturant/searchbar.dart';

import 'food.dart';
import 'food_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Food> foods = [
    food1,
    food2,
    food3,
    food4,
    food5,
  ];

  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          elevation: 10,
          leading: const BackButton(
            color: Colors.white,
          ),
          title: const Text(
            "Food App",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert, color: Colors.white),
              onPressed: () {},
            ),
            const SizedBox(
              width: 15,
            ),
          ],
          centerTitle: true,
        ),
        body: Column(
          children: [
            SearchBar(
              controller: _searchController ,
              hintText: 'Search for food',
              onSubmitted: (String value) {
                // Perform search
                ;
              },
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: SingleChildScrollView(
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: foods.map((f) => FoodList(food: f)).toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.teal,
          child: const Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
