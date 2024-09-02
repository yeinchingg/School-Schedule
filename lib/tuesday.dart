import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_schedule/main.dart';

class TuesdayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tuesday List'),
      ),
      body: Column(
        children: <Widget>[

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(title: 'School Schedule'),
                ),
              );
            },
            child: Text('Go back to HomePage'),
          ),
          Expanded(child: CardList()),
        ],
      ),
    );
  }
}


class CardList extends StatefulWidget {
  @override
  CardListState createState() => CardListState();
}

class CardListState extends State<CardList> {
  List<String> cards = []; // 用于存储每个卡片的数据

  void addCard() {
    setState(() {
      cards.add('New card'); // 新增一张卡片
    });
  }
  void deleteCard(int index){
    setState(() {
      cards.removeAt(index); // 新增一张卡片
    });
  }
  void editCard(int index) {
    final TextEditingController controller =
    TextEditingController(text: cards[index]);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Card'),
          content: TextField(
            controller: controller,
            decoration: InputDecoration(hintText: 'Enter new text'),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                setState(() {
                  cards[index] = controller.text; // 更新卡片的文字
                });
                Navigator.of(context).pop(); // 關閉對話框
              },
              child: Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // 關閉對話框
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: addCard,
          child: Text('Add Card'),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: cards.length,
            itemBuilder: (context, index) {
              return Card(
                margin: EdgeInsets.all(8.0),
                elevation: 4.0,
                child: ListTile(
                  contentPadding: EdgeInsets.all(16.0),
                  title: Text(cards[index]),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () => editCard(index), // 點擊編輯按鈕
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () => deleteCard(index), // 點擊刪除按鈕
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

}
