import 'package:flutter/material.dart';
import 'package:baitapbuoi_9_1/listStudent.dart';
import 'package:baitapbuoi_9_1/detail_student.dart';

void main() {
  runApp(const MyHomeWork());
}

class MyHomeWork extends StatelessWidget {
  const MyHomeWork({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListStudent(),
    );
  }
}

class ListStudent extends StatelessWidget {
  const ListStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Danh Sách Sinh Viên')],
        ),
      ),
      body: ListView.builder(
          itemCount: student.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailStudent(index: index)));
              },
              child: Container(
                margin: const EdgeInsets.only(left: 25, top: 40, right: 25),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black12, width: 3))),
                child: Row(
                  children: [
                    Text(
                      student[index].name,
                      style: const TextStyle(fontSize: 22),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
