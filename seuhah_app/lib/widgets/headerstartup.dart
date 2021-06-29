import 'package:kedai_seuhah/utils/warna.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginHead extends StatelessWidget {
  var text = "";

  LoginHead(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [biru, biruMuda],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
          )),
      child: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/images/logo_only.png',
              width: 150,
            ),
          ),
          Positioned(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            bottom: 20,
            right: 20,
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class RegisterHead extends StatelessWidget {
  var text = "";

  RegisterHead(this.text);

  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [biru, biruMuda],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
          )),
      child: Stack(
        children: [
          SafeArea(
            child: Center(
              child: Image.asset(
                'assets/images/logo_only.png',
                width: 100,
              ),
            ),
          ),
          if (!isKeyboard)
            Positioned(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              bottom: 20,
              right: 20,
            )
        ],
      ),
    );
  }
}
