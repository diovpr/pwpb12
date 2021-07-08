import 'package:book_app/widgets/LoginForm.dart';
import 'package:book_app/widgets/create_account_form.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isCreateAccountClicked = false ;
  final _globalKey = GlobalKey<FormState> ();
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container (child: Column(
        children: [
          Expanded(
            flex:2,
            child: Container(
              color: HexColor('#E7E5E5'),
            ),),
          Text("Sign In", style: TextStyle(
            fontSize: 20.0, color: Colors.black,
          ),),
          SizedBox(height: 10.0,),
          Column(
            children: [
              SizedBox(width: 300.0, height: 300.0,
                  child: isCreateAccountClicked !=
                      true ? LoginForm(formKey: _formKey, emailTextController: _emailTextController, passwordTextController: _passwordTextController)
                      :
                 CreateAccountForm(formKey: _formKey, emailTextController: _emailTextController, passwordTextController: _passwordTextController)
              ),

              TextButton.icon( icon: Icon(Icons.portrait_rounded),
                  style: TextButton.styleFrom(
                    primary: HexColor('#494949'),
                    textStyle: TextStyle(
                      fontSize: 22.0, color: Colors.black,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (!isCreateAccountClicked)
                      {isCreateAccountClicked = true;
                      }
                      else isCreateAccountClicked = false;
                    }
                    );

                  },
                  label: Text( isCreateAccountClicked ? 'already have an account' : 'Create Account')),
            ],
          ),
          Expanded(
            flex:2,
            child: Container(
              color: HexColor('#E7E5E5'),
            ),),
        ],

      ),

      ),

    );
  }

}