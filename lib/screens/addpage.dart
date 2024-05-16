import 'package:flutter/material.dart';

import '../services/todoservices.dart';

class amin extends StatelessWidget {
   amin({super.key});

TextEditingController titleController=TextEditingController();
   TextEditingController subController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff9395D3),
        title: Text(
          "ADD TASK",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(hintText: "Title"),
            ),
            TextField(
              controller: subController,
              decoration: InputDecoration(hintText: "details"),
            ),
            SizedBox(
              height: 30,
            ),

           ElevatedButton(
             child: Text('add',style: TextStyle(color: Colors.white),),
             onPressed: () {
               Map<String,dynamic>todo={
                 'title':titleController.text,
                 'detail': subController.text,
               };
               addTodo(todo);
               print(todo);

             Navigator.pop(context);
             },
             style: ElevatedButton.styleFrom(
               fixedSize: Size(MediaQuery.of(context).size.width,50),
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                 backgroundColor: Color(0xff676eb4),
                 
             )
           ),
          ],
        ),
      ),
    );
  }
}


