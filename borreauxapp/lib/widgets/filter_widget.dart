import 'package:flutter/material.dart';
import 'package:filter_list/filter_list.dart';

class filterButton extends StatefulWidget {
  @override
  _filterButton createState() => _filterButton();
}

class _filterButton extends State<filterButton> {
  List<String> filterCountList = [
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine",
    "Ten",
    "Eleven",
    "Tweleve",
    "Thirteen",
    "Fourteen",
    "Fifteen",
    "Sixteen",
    "Seventeen",
    "Eighteen",
    "Nineteen",
    "Twenty"
  ];

  List<String> selectedFilterCountList = [];
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.filter_list),
      onPressed: _openFilterWindow,
    );
  }

  void _openFilterWindow() async {
    await FilterListDialog.display<String>(context,
        listData: filterCountList,
        selectedListData: selectedFilterCountList,
        height: 480,
        headlineText: "Select Count",
        searchFieldHintText: "Search Here", choiceChipLabel: (item) {
      return item;
    }, validateSelectedItem: (list, val) {
      return !list.contains(val);
    }, onItemSearch: (list, text) {
      if (!list.any(
          (element) => element.toLowerCase().contains(text.toLowerCase()))) {
        return list
            .where(
                (element) => element.toLowerCase().contains(text.toLowerCase()))
            .toList();
      } else {
        return [];
      }
    }, onApplyButtonClick: (list) {
      if (list != null) {
        setState(() {
          selectedFilterCountList = List.from(list);
        });
      }
      Navigator.pop(context);
    });
  }
}
