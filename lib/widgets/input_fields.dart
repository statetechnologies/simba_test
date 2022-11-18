import 'package:flutter/material.dart';
import 'package:simba_test/ui/theme.dart';


class myInputField extends StatelessWidget {
  final String title;
  final String hint;
  final TextEditingController? controller;
  final Widget? widget1;
  final Widget? widget2;
  final bool pass;

  myInputField(
      {required this.title, required this.hint, this.controller, this.widget1,this.widget2, required this.pass});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: titleStyle,
          ),
          Container(
            height: 52.0,
            margin: EdgeInsets.only(top: 8.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                widget1 == null ? Container() : Container(child: widget1),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      obscureText: pass,
                      // readOnly: widget2 == null ? false : true,
                      autofocus: false,
                      controller: controller,
                      style: subTitleStyle,
                      decoration: InputDecoration(
                        hintText: hint,
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                                width: 0)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                                width: 0)),
                      ),
                    ),
                  ),
                ),
                widget2 == null ? Container() : Container(child: widget2)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// TextFormField(
// controller: controller,
// decoration: InputDecoration(
// hintText: hint,
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(10.0),
// borderSide:
// BorderSide(color: Colors.blueAccent, width: 4))),
// textAlign: TextAlign.start,
// ),
