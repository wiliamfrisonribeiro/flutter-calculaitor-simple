import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String result = '';
  double numero1 = 0.0;
  double numero2 = 0.0;

  void somar() {
    double soma = numero1 + numero2;
    result = "A soma dos dois números é $soma";

    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    TextField num1 = TextField(
      keyboardType: TextInputType.number,
      style: TextStyle(color: Colors.deepPurple),
      decoration: InputDecoration(
        labelText: 'Número 01',
        labelStyle: TextStyle(color: Colors.deepPurple),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurple),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurple),
        ),
      ),
      onChanged: (value) => numero1 = double.parse(value),
    );
    TextField num2 = TextField(
      keyboardType: TextInputType.number,
      style: TextStyle(color: Colors.deepPurple),
      decoration: InputDecoration(
        labelText: 'Número 02',
        labelStyle: TextStyle(color: Colors.deepPurple),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurple),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurple),
        ),
      ),
      onChanged: (value) => numero2 = double.parse(value),
    );
    ElevatedButton button = ElevatedButton(
      onPressed: () {
        somar();
      },
      child: Text('Calcular'),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        )),
      ),
    );

    Text result = Text(
      this.result,
      style: TextStyle(color: Colors.deepPurple),
    );

    Padding separator = Padding(
      padding: EdgeInsets.all(4.0),
    );

    Column columns = Column(
      children: <Widget>[
        num1,
        separator,
        num2,
        separator,
        SizedBox(
          child: button,
          width: double.infinity,
        ),
        separator,
        result
      ],
    );

    return MaterialApp(
      title: 'Calculaitor',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculaitor"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: columns,
        ),
      ),
    );
  }
}
