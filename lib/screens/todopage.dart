import 'package:flutter/material.dart';
import 'package:todo/screens/addpage.dart';
import 'package:todo/screens/editapage.dart';

import '../services/todoservices.dart';

class Summi extends StatefulWidget {
  const Summi({super.key});

  @override
  State<Summi> createState() => _SummiState();
}

class _SummiState extends State<Summi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        backgroundColor: Color(0xff9395D3),
        title: Text(
          "TODO APP",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        actions: [
          Icon(
            Icons.calendar_today_outlined,
            color: Colors.white,
          ),
          SizedBox(
            width: 30,
          )
        ],
      ),
      body: todolist.length == 0
          ? Center(
              child: Text("ADD YOUR TASK",
                  style: TextStyle(fontSize: 20, color: Colors.grey)))
          : ListView.builder(
              itemCount: todolist.length,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  title: Text(
                    todolist[index]['title'],
                    style: TextStyle(color: Color(0xff9395D3)),
                  ),
                  subtitle: Text(
                    todolist[index]['detail'],
                    style: TextStyle(fontSize: 12),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => third(
                                      title: todolist[index]['title'],
                                      detail: todolist[index]['detail'],
                                      index: index),
                                )).then((value) => setState(() {

                                }));
                          },
                          icon: Icon(
                            Icons.edit,
                            color: Color(0xff9395D3),
                          )),
                      IconButton(
                          onPressed: () {
                            delete(index);
                            setState(() {});
                            print(todolist);
                          },
                          icon: Icon(
                            Icons.delete_outline_outlined,
                            color: Color(0xff9395D3),
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.verified_user_outlined,
                            color: Color(0xff9395D3),
                          )),
                    ],
                  ),
                ),
              ),
            ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => amin(),
              )).then((value) => setState(() {}));
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Color(0xff7175c2),
      ),
    );
  }
}
