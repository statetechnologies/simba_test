import 'package:flutter/material.dart';
import 'package:simba_test/ui/theme.dart';

class DashBox extends StatelessWidget {
  final Color color;
  final String label;
  final Widget widget;

  DashBox({required this.color,required this.label, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
        widget,
          Text(label,style: titleStyle.copyWith(color: Colors.white),),
      ],),
      width:170,height:120,
      decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(10),),);
  }
}