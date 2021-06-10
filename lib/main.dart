import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(title: 'HomeWork'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    List nome = ['contato1', 'contato2', 'contato3', 'contato6'];
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeWork'),
      ),
      body: ListView.builder(
        itemBuilder: (context, i) => ListTile(
          leading: Icon(Icons.account_circle_sharp),
          title: Text(nome[i]),
          trailing: Container(
            width: 120,
            child: Row(
              children: [
                if (0 < 1)
                  GestureDetector(
                    onTap: () {
                      nome.remove(nome[i]);
                      print(nome);
                    },
                    child: Icon(Icons.delete, color: Colors.red),
                  ),
                GestureDetector(
                  onTap: () {
                    nome.add("Ives Costa");
                    print(nome);
                  },
                  child: Icon(Icons.credit_card, color: Colors.blue),
                )
              ],
            ),
          ),
        ),
        itemCount: nome.length,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
