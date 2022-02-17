import 'package:flutter/material.dart';
import 'package:todo_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';
class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListView.builder(
          itemCount:taskData.tasks.length,
          itemBuilder: (contex, index) {
            return TaskTile(
                isChecked: taskData.tasks[index].isDone,
                taskTitle:taskData.tasks[index].name,
                checkboxChange:( newValue){
                  taskData.updateTask(taskData.tasks[index]);
                },
                listTileDelete: (){
                  taskData.deleteTask(taskData.tasks[index]);
                },
            );
          },
        );
      },
    );
  }
}
