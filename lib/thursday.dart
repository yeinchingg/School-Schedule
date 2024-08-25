import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ThursdayPage extends StatelessWidget {
  const ThursdayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 範例數據
    final List<String> items = List.generate(10, (index) => 'Item $index');

    return Scaffold(
      appBar: AppBar(title: Text('Thursday Schedule')),
      backgroundColor: Colors.grey[800],
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: 2,
        itemBuilder: (context, index) {
          List<Map<String,String>>cardData = [
            {
              'title': '資料結構',
              'subtitle1': 'Y404 /2、3、4節',
              'subtitle2': '王鄭慈',
            },
            {
              'title': '計算機網路',
              'subtitle1': 'C614 / 5、6、7節',
              'subtitle2': '陳永昇',
            },

          ];
          final data = cardData[index];
          return Card(
            margin: EdgeInsets.only(bottom: 10),
            color: Colors.black,
            child:
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text(
                data['title']!,
                style: GoogleFonts.abel(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  textStyle: TextStyle(color: Colors.purple[200],),
                ),
              ),

              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data['subtitle1']!,style: GoogleFonts.abel(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    textStyle: TextStyle(color: Colors.purple,),
                  ),
                  ),
                  SizedBox(width: 15),
                  Text(data['subtitle2']!,style: GoogleFonts.abel(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    textStyle: TextStyle(color: Colors.purple,),
                  ),),
                ],
              ),
            ),


          );
        },
      ),
    );
  }
}
