class TaskModel {
  String? id;
  String? title;
  String? description;
  int? dateTime;
  bool? isDone;
  TaskModel(
      {this.id = '',
      this.title,
      this.description,
      this.dateTime,
      this.isDone = false});
  TaskModel.fromJason(Map<String, dynamic> jason)
      : this(
            id: jason['id'] as String,
            title: jason['title'] as String,
            description: jason['description'] as String,
            dateTime: jason['date'] as int,
            isDone: jason['isDone'] as bool);
  Map<String, dynamic> toJason() {

    return {
      'id': id,
      'title': title,
      'description': description,
      'date': dateTime,
      'isDone': isDone,
    };
  }
}
