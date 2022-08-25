import 'package:firebase_test/modules/add_task_bottom_sheet.dart';
import 'package:firebase_test/modules/settings/settings.dart';
import 'package:firebase_test/modules/tasks/tasks.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  static const String routName = 'home_layout';

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'To Do List',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      body: tabs[currentIndex],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          currentIndex: currentIndex,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          shape: StadiumBorder(side: BorderSide(width: 4, color: Colors.white)),
          onPressed: () {
            BottomSheetAddTask();
          },
          child: Icon(Icons.add)),
    );
  }

  List<Widget> tabs = [
    TasksTab(),
    Settings(),
  ];
  BottomSheetAddTask(){
    showModalBottomSheet(context: context, builder: (context){
      return AddTaskBottomSheet();
    });
  }
}
