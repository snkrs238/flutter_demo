//stless stl入力で雛形作成
//stful 雛形生成
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  final String title;//main.dartからtitleを受け取る
  final String id;
  final String pass;
  const NextPage(this.title,this.id,this.pass,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(                //要素を縦並び
          crossAxisAlignment: CrossAxisAlignment.start,//左寄せ
          children:  [
            Row(                      //要素を横並び
              children:  [
                const SizedBox(
                    width: 30,
                    child: Text('ID'),
                ),
                const SizedBox(
                    width: 20,
                    child: Text(':')
                ),
                Text(id)
              ],
            ),
            const SizedBox(height: 20,),//余白
            Row(
              children: [
                const SizedBox(
                    width: 30,
                    child: Text('PW')
                ),
                const SizedBox(
                    width: 20,
                    child: Text(':')
                ),
                Text(pass),
              ],
            )
          ],
        ),
      ),
    );
  }
}
