import 'package:flutter/material.dart';

class EducationScreen extends StatefulWidget {
  static const routeName = '/education';

  const EducationScreen({Key? key}) : super(key: key);

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  final ScrollController _scrollController = ScrollController();
  List<dynamic> items = [
    {
      'year': '2548-2556',
      'detail': 'อนุบาลและประถมศึกษา \nที่โรงเรียนเทพพิทักษ์วิทยา'
    },
    {
      'year': '2556-2559',
      'detail': 'มัธยมศึกษาตอนต้น \nที่โรงเรียนพิริยาลัยจังหวัดแพร่'
    },
    {
      'year': '2559-2564',
      'detail':
          'ปวช. \nที่วิทยาลัยเทคนิคแพร่ \nแผนกเทคนิคคอมพิวเตอร์ \nปวส. \nที่วิทยาลัยเทคนิคแพร่ \nแผนกคอมพิวเตอร์ซอฟต์แวร์'
    },
    {
      'year': '2564-ปัจจุบัน',
      'detail': 'มหาวิทยาลัยเทคโนโลยีราชมงคลล้านนา เชียงใหม่'
    }
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: buildGridViewItems(),
      ),
    );
  }

  Widget buildGridViewItems() {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      controller: _scrollController,
      primary: false,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemCount: items.length,
      itemBuilder: (context, int index) => listDataItems(items[index]),
    );
  }

  Widget listDataItems(dynamic item) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.history),
                const SizedBox(width: 5),
                Text(item['year']),
              ],
            ),
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Center(
              child: Text(
                item['detail'],
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
