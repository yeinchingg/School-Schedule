import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class WednesdayPage extends StatelessWidget {
  const WednesdayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 範例數據
    final List<String> items = List.generate(10, (index) => 'Item $index');

    return Scaffold(
      appBar: AppBar(title: Text('Wednesday Schedule')),
      backgroundColor: Colors.grey[800],
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: 2,
        itemBuilder: (context, index) {
          List<Map<String,String>>cardData = [
            {
              'title': '線性代數',
              'subtitle1': 'Y406/ 2、3、4節',
              'subtitle2': '王人正',
            },
            {
              'title': '初階法文',
              'subtitle1': 'C635/ 2、3、4節',
              'subtitle2': '程鳳屏',
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
