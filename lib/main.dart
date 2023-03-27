import 'package:flutter/material.dart';

import 'next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> titleList =['amazon','楽天','Yahoo!'];//変数の定義
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutterラボ'),
      ),
      body: ListView.builder(
          itemCount: titleList.length,
          itemBuilder: (context,index) {
            return Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.key),
                  title: Text(titleList[index]),
                  onTap: (){
                    print('リストがタップされました');
                    //画面遷移の処理を記述
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) => NextPage(titleList[index])));
                  },
                ),
                const Divider(
                  thickness: 2, //太さ
                  height: 0, //余白
                ),
              ],
            );
          }
      ),
      floatingActionButton: FloatingActionButton(
        //ボタンが押された時の処理
        onPressed: (){
          titleList.add('Google');
          print(titleList);//console表示
          setState(() {
          });//画面のリロード
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
