import 'package:blog/core/extension/media_query_ext.dart';
import 'package:blog/widgets/standart_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: context.height * 0.02,
          ),
          MyBlogStandartPadding(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(foregroundColor: Colors.black),
                    child: const Text(
                      "Works",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w500),
                    )),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(foregroundColor: Colors.black),
                    child: const Text(
                      "Blog",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w500),
                    )),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(foregroundColor: Colors.black),
                    child: const Text(
                      "Contact",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w500),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: context.height * 0.1,
          ),
          MyBlogStandartPadding(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                    radius: 80.0,
                    backgroundImage: NetworkImage(
                        "https://media.licdn.com/dms/image/C4D03AQFzpT9-aXnbaQ/profile-displayphoto-shrink_800_800/0/1658255499106?e=2147483647&v=beta&t=23PaetXBwmv5AhPJy63K2jWbCw0kuQwijN8jwPwnP0E")),
                SizedBox(
                  width: context.width * 0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bekzod G'ayratov",
                      style: TextStyle(
                          fontSize: 44.0, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Software Engineer",
                      style: TextStyle(
                          fontSize: 44.0, fontWeight: FontWeight.w700),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
