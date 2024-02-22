import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Validation Form'),
          backgroundColor: Color.fromARGB(255, 243, 210, 224),
        ),
        backgroundColor: Color.fromARGB(255, 243, 210, 224),
        body: Container(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Text("Привет!",
                    style: TextStyle(fontSize: 30, color: Colors.pink)),
                Text("Зарегистрируйся здесь",
                    style: TextStyle(fontSize: 30, color: Colors.pink)),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                    decoration: InputDecoration(labelText: "Введите свое имя"),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
                        return "Введите корректное имя";
                      } else {
                        return null;
                      }
                    }),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                    decoration:
                        InputDecoration(labelText: "Введите свой номер"),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[+]*[(]{0,1}[0,9]{1,4}[)]{0,1}[-\s\./0-9]+$')
                              .hasMatch(value!)) {
                        return "Введите корректный номер";
                      } else {
                        return null;
                      }
                    }),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                    decoration:
                        InputDecoration(labelText: "Введите свой email"),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2-4}')
                              .hasMatch(value!)) {
                        return "Введите корректный email";
                      } else {
                        return null;
                      }
                    }),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Submit",
                          style: TextStyle(fontSize: 22, color: Colors.pink)),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward),
                        iconSize: 50,
                        color: Colors.pink,
                        padding: EdgeInsets.all(16),
                      ),
                    ])
              ],
            )),
      ),
    );
  }
}
