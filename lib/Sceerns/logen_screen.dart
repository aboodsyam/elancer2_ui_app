import 'package:elancer2_ui_app/widgets/on_boarding_content.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'SIGN IN',
          style: GoogleFonts.nunito(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'SIGN IN',
              style: GoogleFonts.nunito(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            Text(
              'Login to continue your accoeut',
              style: GoogleFonts.nunito(
                  color: Color(0xff716f87),
                  height: 1,
                  fontWeight: FontWeight.w300,
                  fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            //ما يسمي بلاندريود(Edit Text)
            TextField(
              style: GoogleFonts.nunito(),
              /////////////////////////
              onTap: () {
                print('Tappe');
              },
              ////////////////////////////
              onChanged: (String value) {
                print('$value');
              },
              ////////////////////////////
              readOnly: false,
              ////////////////////////////
              enabled: true,
              ////////////////////////////
              textAlign: TextAlign.start,
              ////////////////////////////
              textDirection: TextDirection.ltr,
              ////////////////////////////
              cursorColor: Colors.pink,
              cursorWidth: 5,
              cursorRadius: Radius.circular(10),
              cursorHeight: 10,
              ////////////////////////////
              //كلمة سر
              //           obscureText: true,
              ////////////////////////////
              //         showCursor:true,
              ////////////////////////////
              textInputAction: TextInputAction.search,
              onSubmitted: (String value) {
                print(value);
              },
              ////////////////////////////
              keyboardType: TextInputType.emailAddress,
              //  keyboardType: TextInputType.phone,
              //   keyboardType: TextInputType.numberWithOptions(signed: false,decimal: false),
              ////////////////////////////
              // textCapitalization: TextCapitalization.words,
              //   textCapitalization: TextCapitalization.characters,
              textCapitalization: TextCapitalization.none,
              ////////////////////////////
              // نص تعريفي
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: GoogleFonts.nunito(),
                floatingLabelStyle: GoogleFonts.nunito(),
                floatingLabelAlignment: FloatingLabelAlignment.start,
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                //   floatingLabelBehavior: FloatingLabelBehavior.never,
                //                 hintText: 'Email',
                //                 helperStyle: GoogleFonts.nunito(),
                //                 helperMaxLines: 1,
                //                 hintTextDirection: TextDirection.ltr,
                //               ),

                //بديل hint..
                ////////////////////////////
              ),
            ),
          ],
        ),
      ),
    );
  }
}
