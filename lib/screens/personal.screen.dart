import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PersonalScreen extends StatefulWidget {
  static const routeName = '/personal';

  const PersonalScreen({Key? key}) : super(key: key);

  @override
  State<PersonalScreen> createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
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
      body: SizedBox(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 5, color: Colors.white))),
                      child: Image.asset('assets/images/background.jpeg'),
                    ),
                    Positioned(
                      bottom: 0,
                      left: MediaQuery.of(context).size.width / 3,
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: 0.2,
                                blurRadius: 10,
                              )
                            ]),
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage:
                              AssetImage('assets/images/profile.jpeg'),
                          radius: 70,
                        ),
                      ),
                    )
                  ],
                ),
                Card(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        const Text(
                          'ข้อมูลส่วนตัว',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                        Row(
                          children: const [
                            Text('ชื่อ: '),
                            Text('ภาณุพงศ์ เหมืองจา'),
                          ],
                        ),
                        Row(
                          children: const [
                            Text('ชื่อเล่น: '),
                            Text('ไดร์ฟ'),
                          ],
                        ),
                        Row(
                          children: const [
                            Text('เพศ: '),
                            Text('ชาย'),
                          ],
                        ),
                        Row(
                          children: const [
                            Text('วัน/เดือน/ปี เกิด: '),
                            Text('9 กุมภาพันธ์ 2544'),
                          ],
                        ),
                        Row(
                          children: const [
                            Text('สัญชาติ: '),
                            Text('ไทย'),
                          ],
                        ),
                        Row(
                          children: const [
                            Text('ศาสนา: '),
                            Text('พุทธ'),
                          ],
                        ),
                        Row(
                          children: const [
                            Text('เกรดเฉลี่ยสะสม (GPA): '),
                            Text(
                              '2.88',
                              style: TextStyle(height: 1.5),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'ช่องทางการติดต่อ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                        Row(
                          children: const [
                            FaIcon(FontAwesomeIcons.facebook),
                            SizedBox(width: 10),
                            Text('ภาณุพงศ์ เหมืองจา')
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            FaIcon(FontAwesomeIcons.instagram),
                            SizedBox(width: 10),
                            Text('drive_panupong')
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            FaIcon(FontAwesomeIcons.phone),
                            SizedBox(width: 10),
                            Text('0612908891')
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Icon(Icons.mail),
                            SizedBox(width: 10),
                            Text('panupong_ma641@live.rmutl.ac.th')
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
