import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Function(String) onSubmitted;

  const SearchBar({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(),
        suffixIcon: IconButton(
          icon: Icon(Icons.search,color: Colors.teal),

          onPressed: () => onSubmitted(controller.text),
        ),
      ),
    );
  }
}