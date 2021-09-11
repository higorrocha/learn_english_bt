import 'package:flutter/material.dart';
import 'package:learn_english_bt/screens/Animals.dart';
import 'package:learn_english_bt/screens/Numbers.dart';
import 'package:learn_english_bt/screens/Vowels.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 2,
        vsync: this
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn English"),
        bottom: TabBar(
          indicatorWeight: 4,
          indicatorColor: Colors.white,
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
          controller: _tabController,
          tabs: [
            Tab(text: "Animals",),
            Tab(text: "Numbers",)
          ],
        ),
      ),
      body:  TabBarView(
        controller: _tabController,
        children: [
          Animals(),
          Numbers()
        ],
      ),
    );
  }
}
