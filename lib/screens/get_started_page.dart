import 'package:book_app/widgets/LoginForm.dart';
import 'package:book_app/widgets/input_decoration.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'login_page.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CircleAvatar(
        backgroundColor: HexColor('#eae9e9'),
        child: Column(
          children: [
            Spacer(),
            Text("Login App",style: TextStyle(
                fontSize: 40.0, color: Colors.black
            ),),

            SizedBox(height: 15.0,),
            Text('"Baca dan Nikmati Semua Yang Ada Disini"',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0, color: Colors.black
            ),),
            SizedBox(height: 50.0,
            ),
            TextButton.icon(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: HexColor('#eb4034'),
                textStyle: TextStyle(fontSize: 15.0, color: Colors.red),

              ),

              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),
                ));



              }, icon: Icon(Icons.login_sharp), label:
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Sign In To get Started"),
            ),),
            Spacer(),
          ],

        ),
      ),
    );
  }
}




