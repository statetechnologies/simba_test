import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simba_test/pages/home.dart';
import 'package:simba_test/pages/signup.dart';
import 'package:simba_test/ui/theme.dart';
import 'package:simba_test/widgets/buttons.dart';
import '../widgets/input_fields.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passd = true;
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FooterView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Center(
                  child: Image.asset(
                'images/oil.png',
                width: 180,
                height: 180,
              )),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text(
                  'Hello!',
                  style: headingStyle.copyWith(color: Colors.red),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text(
                  'Login to continue!',
                  style: subHeadingStyle,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: myInputField(
                  controller: username,
                  pass: false,
                  widget1: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(CupertinoIcons.profile_circled),
                  ),
                  title: 'Username',
                  hint: 'Enter Username',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: myInputField(controller: password,
                  pass: passd,
                  widget1: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(Icons.lock),
                  ),
                  title: 'Password',
                  hint: 'Enter Password',
                  widget2: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      child: Icon(passd==true?CupertinoIcons.eye_solid:CupertinoIcons.eye_slash_fill),
                      onTap: () {
                        setState(() {
                          passd = !passd;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Forgot Password?',
                  style:
                      subTitleStyle.copyWith(fontSize: 12, color: Colors.grey),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: CustomButtom(
                  label: 'Login',
                  onTap: () {
                    _validateLogin();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      'Dont have an Account? ',
                      style: subTitleStyle.copyWith(color: Colors.grey),
                    ),
                    GestureDetector(
                      child: Text(
                        'Sign Up',
                        style: subTitleStyle.copyWith(
                            color: CupertinoColors.systemBlue),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
        footer:  Footer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Powered by SIMBA GROUP'),
              SizedBox(
                height: 5,
              ),
              Text('Version 2.0'),
            ],
          ),
          padding: EdgeInsets.only(bottom: 15.0),
        ),
        flex: 4, //default flex is 2
      ),
    );
  }

  _validateLogin(){
    if(username.text.isEmpty&&password.text.isEmpty){
      print('Empty Fields');
      return showDialog(context: context, builder: (BuildContext contexts){
        return AlertDialog(title: Text('Alert'),content: Text('Fields cannot be empty'),actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],);
      });
    }else if(username.text.toString()=='username'&&password.text.toString()=='password'){
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => HomePage()),
              (route) => false);
    }
  }
}


