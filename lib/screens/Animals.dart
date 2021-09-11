import 'package:flutter/material.dart';

class Animals extends StatefulWidget {
  const Animals({Key? key}) : super(key: key);

  @override
  _AnimalsState createState() => _AnimalsState();
}

class _AnimalsState extends State<Animals> {
  @override
  Widget build(BuildContext context) {

    return GridView.count(
        crossAxisCount: 2,
        childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
        children: [
          GestureDetector(
            onTap: (){},
            child: Image.asset("assets/images/cat.png"),
          ),
          GestureDetector(
            onTap: (){},
            child: Image.asset("assets/images/cow.png"),
          ),
          GestureDetector(
            onTap: (){},
            child: Image.asset("assets/images/dog.png"),
          ),
          GestureDetector(
            onTap: (){},
            child: Image.asset("assets/images/lion.png"),
          ),
          GestureDetector(
            onTap: (){},
            child: Image.asset("assets/images/monkey.png"),
          ),
          GestureDetector(
            onTap: (){},
            child: Image.asset("assets/images/sheep.png"),
          ),
        ],
    );
  }
}
