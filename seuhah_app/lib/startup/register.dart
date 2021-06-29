import 'package:flutter/material.dart';
import 'package:kedai_seuhah/utils/warna.dart';
import 'package:kedai_seuhah/widgets/headerstartup.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: RegisterHead("REGISTER"),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  children: [
                    _textInput(
                        hint: "Nama Depan", icon: Icons.account_box_outlined),
                    _textInput(
                        hint: "Nama Belakang",
                        icon: Icons.account_box_outlined),
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
                          child: Text('Register'),
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
                    Navigator.pop(context, '/');
                  },
                  child: Text(
                    'Sudah Punya Akun? Login.',
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
