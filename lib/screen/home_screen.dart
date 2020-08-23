import 'package:flutter/material.dart';
import 'package:currency_converter/screen/common/row_buttons.dart';
import 'package:currency_converter/screen/pages/Info_page.dart';
import 'package:currency_converter/screen/pages/Rates_page.dart';
import 'package:currency_converter/screen/pages/converter_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _pageIndexHolder=0;

  List<Widget> _listPages=[ConverterPage(),RatesPage(),InfoPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            RowButtons(
              onSave: (pageIndexValue){
                if (mounted)
                  setState(() {
                    _pageIndexHolder=pageIndexValue;
                  });
              },
              activePageIndex: _pageIndexHolder,
            ),
          Expanded(
            child: _listPages[_pageIndexHolder],
          )
          ],
        ),
      ),
    );
  }
}
