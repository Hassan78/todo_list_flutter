import 'package:flutter/material.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0,left:30.0,right:30.0,bottom: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius:30.0,
                    child: Icon(Icons.list,
                    size: 30.0,
                    color: Colors.blueAccent,),
                    ),
                    SizedBox(height:20.0),
                  Text('Day Plan',
                  style:TextStyle(
                    color: Colors.white,
                    fontSize:50.0,
                    fontWeight:FontWeight.w700
                  ),
                  ),
                  SizedBox(height:10.0),
                  Text('12 Tasks',
                  style: TextStyle(
                    fontSize:25.0,
                    color: Colors.white,
                  ),
                  ),
                  

                ],
                ),
            ),
          ),
          Expanded(
                child: Container(
                    decoration:BoxDecoration(
                      color:Colors.white,
                      borderRadius:BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      ),
                      child: TaskView(),
                  ),
                  
              ),
        ],
      )
    );
  }
}

class TaskView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children:[
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal:30.0),
        title: Text('this is a task'),
        trailing: Checkbox(value: false,
        onChanged: null,),
        
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal:30.0),
        title: Text('this is a task'),
        trailing: Checkbox(value: false,
        onChanged: null, ),
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal:30.0),
        title: Text('this is a task'),
        trailing: Checkbox(value: false,
        onChanged: null, ),
        ),
      ]
    );
  }
}