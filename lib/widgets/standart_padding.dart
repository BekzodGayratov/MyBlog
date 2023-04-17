import 'package:blog/core/extension/media_query_ext.dart';
import 'package:flutter/material.dart';

class MyBlogStandartPadding extends StatelessWidget {
  final Widget child;
  const MyBlogStandartPadding({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: context.width * 0.14),child: child,);
  }
}
