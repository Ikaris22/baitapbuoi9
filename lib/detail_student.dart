import 'package:flutter/material.dart';

class DetailStudent extends StatelessWidget {
  final int index;
  final List student;
  const DetailStudent({super.key, required this.index,required this.student});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Danh Sách Sinh Viên')],
          ),
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 30, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Tên: ${student[index].name}\nTuổi: ${student[index].age}',
                  style: const TextStyle(fontSize: 22)),
            ],
          ),
        ));
  }
}
