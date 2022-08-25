import 'package:firebase_test/models/task_model.dart';
import 'package:firebase_test/utils/add_task_firebase.dart';
import 'package:flutter/material.dart';

class AddTaskBottomSheet extends StatefulWidget {
  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  var selectedDate = DateTime.now();
  var formKey = GlobalKey<FormState>();
  String title='';
  String description='';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add New Task',
            style: Theme.of(context).textTheme.headline4,
          ),
          Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                  onChanged: (text){
                    title=text;
                  },
                      validator: (text) {
                        if (text == null || text.trim().isEmpty) {
                          return 'please enter a title';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Title',
                      ),
                      style: Theme.of(context).textTheme.bodyText2),
                  TextFormField(
                  onChanged: (text){
                    description=text;
                  },
                      validator: (text) {
                        if (text == null || text.trim().isEmpty) {
                          return 'please enter description';
                        }
                        return null;
                      },
                      minLines: 4,
                      maxLines: 4,
                      decoration: InputDecoration(
                        labelText: 'Description',
                      ),
                      style: Theme.of(context).textTheme.bodyText2),
                  SizedBox(
                    height: 9,
                  ),
                  Text(
                    'Select Date',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      openDatePicker();
                    },
                    child: Text(
                      '${selectedDate.year}/${selectedDate.month}/${selectedDate.day}',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          TaskModel tas= TaskModel(title: title,description: description,dateTime: selectedDate.microsecondsSinceEpoch );
                          addTaskFromFirebase(tas);

                        }
                      },
                      child: Text(
                        'Submit',
                        style: Theme.of(context).textTheme.bodyText1,
                      ))
                ],
              ))
        ],
      ),
    );
  }

  void openDatePicker() async {
    var choosenDate = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));
    if (choosenDate != null) {
      selectedDate = choosenDate;
      setState(() {});
    }
  }
}
