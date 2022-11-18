import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

import '../ui/theme.dart';
import '../widgets/buttons.dart';
import '../widgets/input_fields.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool passd = true;
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      child: Icon(CupertinoIcons.eye_solid),
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
}
