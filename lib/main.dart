import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detail_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School Schedule',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'School Schedule'),
    );
  }
}

class CardItem {
  final String urlImage;
  final String title;
  final String subtitle;
  final String pageType;

  const CardItem({
    required this.urlImage,
    required this.title,
    required this.subtitle,
    required this.pageType,
  });
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<CardItem> items = [
    CardItem(
      urlImage: 'https://images.wsj.net/im-805062/?width=1278&size=1',
      title: 'so blue',
      subtitle: '☠️☠️☠️',
      pageType: 'mon',
    ),
    CardItem(
      urlImage:
          'https://facts.net/wp-content/uploads/2023/12/11-tuesday-fun-facts-1701532003.jpg',
      title: 'a little blue',
      subtitle: '🥴️🥴️🥴️',
      pageType: 'tue',
    ),
    CardItem(
      urlImage:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGzJsj5wJnIocIgiAdC1wOZFG3dlbDog2NHw&s',
      title: 'maybe green',
      subtitle: '🫠🫠🫠',
      pageType: 'wed',
    ),
    CardItem(
      urlImage:
          'https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO3y3XCQ-default.jpg',
      title: 'weekend soon',
      subtitle: '🧙‍♂️🧙‍♂️🧙‍♂️‍',
      pageType: 'thu',
    ),
    CardItem(
      urlImage:
          'https://image.spreadshirtmedia.net/image-server/v1/products/T1459A839PA4459PT28D165620767W10000H7489/views/1,width=800,height=800,appearanceId=839,backgroundColor=F2F2F2/happy-friday-happy-friday-spell-work-sticker.jpg',
      title: 'wakuwaku',
      subtitle: '😎😎😎',
      pageType: 'fri',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        width: 450,
        child: ListView.separated(
            padding: EdgeInsets.all(16),
            itemCount: 5,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => buildCard(item: items[index]),
            separatorBuilder: (context, _) => SizedBox(height: 5)),

        // itemCount: 5,


        // children: [
        //   buildCard(),
        //   SizedBox(height: 5),
        //   buildCard(),
        //   SizedBox(height: 5),
        //   buildCard(),
        //   SizedBox(height: 5),
        //   buildCard(),
        //   SizedBox(height: 5),
        //   buildCard(),
        //   SizedBox(height: 5),
        //   buildCard(),
        // ],
      ),
    );
  }

  Widget buildCard({
    required CardItem item,
  }) =>
      Container(
        // width: 200,
        height: 200,
        color: Colors.white,
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                // 导航到 DetailPage 并传递 imageUrl 参数
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      imageUrl: item.urlImage,
                      pageType: item.pageType,
                    ),
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8), // 设置圆角
                child: SizedBox(
                  width: 200, // 设置图片宽度
                  height: 190, // 设置图片高度
                  child: Image.network(
                    item.urlImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // Image.network(
            // 'https://images.wsj.net/im-805062/?width=1278&size=1'),
            const SizedBox(width: 10),
            Column(
              children: [
                const SizedBox(height: 100),
                Text(
                  item.title,
                  style: GoogleFonts.aclonica(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Text(
                  item.subtitle,
                  style: GoogleFonts.aclonica(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
