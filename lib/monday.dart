import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MondayPage extends StatelessWidget {
  const MondayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 範例數據
    final List<String> items = List.generate(10, (index) => 'Item $index');

    return Scaffold(
      appBar: AppBar(title: Text('Monday Schedule')),
      backgroundColor: Colors.grey[800],
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: 1,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.only(bottom: 10),
            color: Colors.black,
            child: ListTile(
              leading: Icon(Icons.access_time),
              title: Text(
                '沒課',
                style: GoogleFonts.abel(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  textStyle: TextStyle(color: Colors.purple[200],),),
              ),
              subtitle: Text(
                '爽',
                style: GoogleFonts.abel(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  textStyle: TextStyle(color: Colors.purple,),
                ),
                ),
              ),
          );
        },
      ),
    );
  }
}
