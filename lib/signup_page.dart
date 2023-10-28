import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
   String selectedValue = 'Option 1'; // The initial selected value

  List<String> dropdownItems = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
  ];
  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(5))
                  );

    return  Scaffold(
      appBar: AppBar(
        title: Text('SignUp Page'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(height: 180,),
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
              SizedBox(height: 10,),
              Text('Select Your College',
              style: Theme.of(context).textTheme.bodySmall,),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xfff3f3f4),
                  borderRadius: BorderRadius.circular(7)
                ),
                child: DropdownButton<String>(
                  isExpanded: true, // Allow the dropdown to expand to fit the items
                          underline: Container(
                height: 0, // Underline height
                color: Colors.blue, // Underline color
                          ),
                        value: selectedValue,
                        onChanged: (newValue) {
                          setState(() {
                selectedValue = newValue!;
                          });
                        },
                        items: dropdownItems.map((String item) {
                          return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
                          );
                        }).toList(),
                      ),
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
          'SignUp',
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
                  'Already have an account ?',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
            Navigator.pop(context);
          },
                  child: Text(
                    'Login',
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
    ),
    );
  }
}