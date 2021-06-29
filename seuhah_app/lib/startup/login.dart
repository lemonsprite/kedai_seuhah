import 'package:flutter/material.dart';
import 'package:kedai_seuhah/utils/warna.dart';
import 'package:kedai_seuhah/widgets/headerstartup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: LoginHead("MASUK"),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  children: [
                    _textInput(hint: "Masukan email anda", icon: Icons.email),
                    SizedBox(height: 15),
                    _textInput(
                      hint: "Masukan password anda",
                      icon: Icons.vpn_key,
                      obscure: true,
                    ),
                    SizedBox(height: 20),
                    Flexible(
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Masuk'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                new GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Text(
                    'Belum Punya Akun? Daftar Sekarang!',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget _textInput({controller, hint, icon, suffIcon, obscure: false}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      color: putih,
    ),
    padding: EdgeInsets.only(left: 10),
    child: TextFormField(
      textInputAction: TextInputAction.next,
      controller: controller,
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: hint,
        contentPadding: EdgeInsets.only(top: 17),
        prefixIcon: Icon(icon),
        border: InputBorder.none,
        suffixIcon: Icon(suffIcon),
      ),
    ),
  );
}
