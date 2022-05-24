import 'package:flutter/material.dart';

class SearchBarDelegate extends StatefulWidget {
  const SearchBarDelegate({ Key? key }) : super(key: key);

  @override
  State<SearchBarDelegate> createState() => _SearchBarDelegateState();
}

class _SearchBarDelegateState extends State<SearchBarDelegate> {
  @override
  Widget build(BuildContext context) {
    // retrun search bar
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Bar'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
            // Navigate to second route when tapped.
            },
          ),
          // add more IconButton
        ],
      ),
      body: Center(
        child: Text('Search Bar'),
      ),
    );
  }
}