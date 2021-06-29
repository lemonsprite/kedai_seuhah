import 'package:flutter/material.dart';
import 'package:kedai_seuhah/utils/warna.dart';

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  // @override
  // void initState() {
  //   super.initState();
  //   Timer(const Duration(milliseconds: 4000), () {
  //     Navigator.replace(context,
  //         oldRoute: MaterialPageRoute(builder: (context) => Splash()),
  //         newRoute: MaterialPageRoute(builder: (context) => Login()));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [biru, biruMuda],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo_only.png', width: 200),
                  SizedBox(height: 10),
                  // Text(
                  //   'Kedai Seuhah',
                  //   style: TextStyle(
                  //     fontSize: 30,
                  //     fontWeight: FontWeight.bold,
                  //     color: putih,
                  //   ),
                  // ),
                  SizedBox(height: 3),
                  Text(
                    'Develop by Kelompok 8  |  Versi 1.0.0',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      color: putih,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
