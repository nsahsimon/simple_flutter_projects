import 'package:flutter/material.dart';
import 'package:todoey_app/widgets/tasks_list.dart';
import 'package:todoey_app/screens/add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/tasks.dart';
class TasksScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    String newTask;
    return  Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(
                builder: (context) {
                  return AddTaskScreen();
                }
              ));
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ) ,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                CircleAvatar(
                    child: Icon(
                        Icons.list,
                        size: 30.0,),
                    backgroundColor: Colors.white,
                    radius: 30.0,),
                SizedBox(
                    height: 10.0,
                ),

                Text('Todoey',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                )
                ),

                Text(
                  '${Provider.of<Tasks>(context).tasks.length} tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ]
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),),
              ),
                child: TaskList(),
            ),

          )
        ],
      )
    );
  }
}




