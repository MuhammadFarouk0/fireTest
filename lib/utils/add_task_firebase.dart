import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_test/models/task_model.dart';


CollectionReference<TaskModel>getTasksFromFirestore(){


  return FirebaseFirestore.instance.collection('tasks').
  withConverter<TaskModel>(
      fromFirestore: (snapshot,op){
        return TaskModel.fromJason(snapshot.data()!);
      },
      toFirestore: (taskModel,options)=>taskModel.toJason());
}

void addTaskFromFirebase(TaskModel taskModel){
 // var collection= FirebaseFirestore.instance.collection('tasks').
 //  add(data)
 var typeCollection= getTasksFromFirestore();

 var doc=typeCollection.doc();
 taskModel.id=doc.id;
 doc.set(taskModel);
 print('is working');

 // FirebaseFirestore.instance;
}