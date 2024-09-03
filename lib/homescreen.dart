import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          //appBar: AppBar(),

          body: Container(
        child: Container(
            child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Icon(Icons.reply_all), CircleAvatar(),],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.blue,
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (cty, index) {
                      return Container(
                        margin: EdgeInsets.zero,
                      //  color: Colors.red,
                        child: ListTile(title: Text("الامل")),

                      );
                    }),
              ),
            ),
          ],
        )),
      )),
    );
  }
}
