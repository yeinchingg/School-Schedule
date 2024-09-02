import 'package:flutter/material.dart';
import 'monday.dart';
import 'tuesday.dart';
import 'wednesday.dart';
import 'thursday.dart';
import 'friday.dart';

class DetailPage extends StatelessWidget {

  final String pageType;

  const DetailPage({
    Key? key,
    required this.pageType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget page;

    switch (pageType) {
      case 'mon':
        page = MondayPage();
        break;
      case 'tue':
        page = TuesdayPage();
        break;
      case 'wed':
        page = WednesdayPage();
        break;
      case 'thu':
        page = ThursdayPage();
        break;
      case 'fri':
        page = FridayPage();
        break;
      default:
        page = Scaffold(
          appBar: AppBar(title: Text('錯誤')),
          body: Center(child: Text('無效的頁面類型')),
        );
    }

    return page;
  }
}
