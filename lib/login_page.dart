import 'package:flutter/material.dart';
import 'package:poll_campus_ui/signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

const border = OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(5))
                  );

    return  Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 180,),
              Center(
                
                child: Text('Poll Campus',
                style: Theme.of(context).textTheme.titleLarge,
                
                ),
              ),
              SizedBox(height: 20,),
              Text('Email id',
              style: Theme.of(context).textTheme.bodySmall,),
              SizedBox(height: 10,),
              TextField(
                
                decoration: InputDecoration(
                  hintText: "Enter your email id",
                  filled: true,
                  fillColor: Color(0xfff3f3f4),
                  border: border,
                  enabledBorder: border,
                  focusedBorder: border
                )
              ),
              SizedBox(height: 10,),
               Text('Password',
              style: Theme.of(context).textTheme.bodySmall,),
              
              SizedBox(height: 10,),
              TextField(
                obscureText: true, 
                decoration: InputDecoration(
                  hintText: "Password",
                  filled: true,
                  fillColor: Color(0xfff3f3f4),
                  border: border,
                  enabledBorder: border,
                  focusedBorder: border
                )
              ),
              SizedBox(height: 20,),
        Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.shade200,
                  offset: Offset(2, 4),
                  blurRadius: 5,
                  spreadRadius: 2)
            ],
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xfffbb448), Color(0xfff7892b)])),
        child: Text(
          'Login',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            padding: EdgeInsets.all(15),
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Don\'t have an account ?',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => SignUpPage()));
          },
                  child: Text(
                    'Register',
                    style: TextStyle(
                        color: Color(0xfff79c4f),
                        fontSize: 13,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          )
            ],
          ),
        ),
      ),
    );
  }
}