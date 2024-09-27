import 'package:flutter/material.dart';
class value extends StatefulWidget {
  const value({super.key});

  @override
  State<value> createState() => _valueState();
}

class _valueState extends State<value> {
  int i = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              ++i;
            });
            // ++i;
            print(i);
          }),
      body:  Center(
          child: Container(
            height: 155,
            width: 155,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(31),
              color: Colors.teal,
            ),
            child: Center(
              child: Text("$i",
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors.white,
                      fontWeight:FontWeight.w900,
                    ),
                    ),
            ),
          )),
    );
  }
}
