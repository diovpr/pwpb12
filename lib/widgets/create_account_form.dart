import 'package:flutter/material.dart';

import 'input_decoration.dart';

class CreateAccountForm extends StatelessWidget {
  const CreateAccountForm({
    Key? key,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailTextController,
    required TextEditingController passwordTextController,
  }) : _formKey = formKey, _emailTextController = emailTextController, _passwordTextController = passwordTextController, super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController _emailTextController;
  final TextEditingController _passwordTextController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey ,
      child:
      Column(
        
          children : [ 
            Text('please enter a valid email and password at least 6 chars'),
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField (
              validator: (value) {
                return value!.isEmpty ? 'masukkan email dulu' : null;
              },
              controller : _emailTextController,
              decoration: buildInputDecoration(label: 'Email', hintText: 'abc@yahoo.com'),


            ),
          ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField (
                validator: (value) {
                  return value!.isEmpty ? 'masukkan password' : null;
                },
                controller : _passwordTextController,
                obscureText: true,
                decoration: buildInputDecoration(label: 'Password', hintText: 'masukkan passwordmu'),
              ),
            ),
            SizedBox(height: 20.0,),

            TextButton(
                style: TextButton.styleFrom(
                    primary: Colors.white, padding: EdgeInsets.all(15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),

                    ),
                    backgroundColor: Colors.redAccent,
                    textStyle: TextStyle(
                      fontSize: 11,

                    )
                ), onPressed: () {
              if (_formKey.currentState!.validate())
              {}
            }, child: Text('Create Account')),



          ]
      ),


    );
  }
}