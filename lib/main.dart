import 'package:flutter/material.dart';
import 'package:baitapbuoi_9_1/detail_student.dart';

void main() {
  runApp(const MyHomeWork());
}

class MyHomeWork extends StatelessWidget {
  const MyHomeWork({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: ListStudent(),
    );
  }
}

class ListStudent extends StatelessWidget {
   const ListStudent({super.key});

  @override
  Widget build(BuildContext context) {
    List<Students> student=[
      Students('Võ Minh Hiếu',23),
      Students('Trần Văn A',27),
      Students('Trần Thị B',18),
      Students('Nguyễn Văn C',25),
      Students('Phạm Trần D',19),
      Students('Lê Thị E',20),
      Students('Nguyễn Thúy F',19),
      Students('Nguyễn Văn G',22),
      Students('Phạm Văn H',19),
      Students('Nguyễn Trần I',22),
      Students('Phan Văn J',18),
      Students('Trần Đức K',21),
      Students('Nguyễn Thị L',19),
      Students('Lê Văn M',22)
    ];
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
                        builder: (context) => DetailStudent(st: student[index],)));
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
class Students{
  String name;
  int age;

  Students (this.name,this.age);
}
