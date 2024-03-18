import 'package:astrogpt/widgets/global/largeText.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LargeText(
            text: 'Search_page',
        ),
      ),
    );  }
}
