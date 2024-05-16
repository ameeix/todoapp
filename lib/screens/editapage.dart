import 'package:flutter/material.dart';
import 'package:todo/services/todoservices.dart';

class third extends StatefulWidget {
   third({ required this.title,required this.detail,required this.index,super.key});

   String title;
   String detail;
   int index;

   @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  TextEditingController titleController=TextEditingController();

  TextEditingController subController=TextEditingController();
@override
  void initState() {
  titleController.text=widget.title;
  subController.text=widget.detail;
    // TODO: implement initState
    super.initState();
    print(widget.title);
  print(widget.detail);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff9395D3),
        title: Text(
          "EDIT TASK",
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
       Row(
         children: [
           Expanded(child:
               ElevatedButton(
                 onPressed:() {
                   Map<String,dynamic>todo={
                     'title':titleController.text,
                     'detail': subController.text,
                   };
                   updatetodo(todo,widget.index);
                   Navigator.pop(context);
                 },
                 style: ElevatedButton.styleFrom(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10)),backgroundColor: Color(0xff9395D3),
                 ),
                 child: Text("update",style: TextStyle(color: Colors.white),),
               ),
           ),
           SizedBox(width:20 ,),
         Expanded(child:
         ElevatedButton(
           onPressed:() {
             Navigator.pop(context);
           },
           style: ElevatedButton.styleFrom(
             shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10)),backgroundColor: Color(0xff9395D3),
           ),
           child: Text("cancel",style: TextStyle(color: Colors.white),),
         ),
         ),
       ])
    ]),
    ),
    );
  }
}
