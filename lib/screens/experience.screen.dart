import 'package:flutter/material.dart';

class ExperienceScreen extends StatefulWidget {
  static const routeName = '/experience';

  const ExperienceScreen({Key? key}) : super(key: key);

  @override
  State<ExperienceScreen> createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
  final ScrollController _scrollController = ScrollController();
  List<dynamic> items = [
    {
      'title': 'ฝึกงาน ปวช.',
      'detail':
          'ฝึกงานที่ร้านแอดไวซ์แพร่ ทำหน้าที่เกี่ยวกับ ซ่อมคอม ซ่อมโน๊ตบุ๊ค ซ่อมเครื่องปรื้น ประกอบคอม'
    },
    {
      'title': 'แข่งขันสิ่งประดิษฐ์ตอน ปวช.',
      'detail':
          'เข้าร่วมการแข่งขันสิ่งประดิษฐ์ เป็นระบบนิเทศการฝึกงานออนไลน์ ได้รางวัล ระดับอาชีวศึกษาจังหวัดแพร่ ระดับภาคเหนือ ระดับชาติ'
    },
    {
      'title': 'แข่งขันสิ่งประดิษฐ์ตอน ปวส.',
      'detail':
          'เข้าร่วมการแข่งขันสิ่งประดิษฐ์ เป็นระบบ LMS:ระบบการจัดการ การเรียนรู้ออนไลน์  ได้รางวัล ระดับอาชีวศึกษาจังหวัดแพร่ ระดับภาคเหนือ'
    },
    {
      'title': 'ฝึกงาน ปวส.',
      'detail':
          'ฝึกงานที่บริษัท SeedSoft เชียงใหม่ ทำหน้าที่เกี่ยวกับ การเขียนโปรแกรม Frontend Backend DevOps ทุกรูปแบบทั้งเว็บไซต์ แอพพลิเคชั่นบนโทรศัพท์ โปรแกรมDesktop แอพพลิเคชั่นสำหรับเครื่องPOS'
    }
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
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
    return ListView.builder(
      scrollDirection: Axis.vertical,
      controller: _scrollController,
      primary: false,
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.check_circle),
                const SizedBox(width: 5),
                Text(
                  item['title'],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(item['detail']),
            ),
          ],
        ),
      ),
    );
  }
}
