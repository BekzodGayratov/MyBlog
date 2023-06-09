import 'package:blog/core/extension/media_query_ext.dart';
import 'package:blog/provider/home_provider.dart';
import 'package:blog/widgets/loading_widget.dart';
import 'package:blog/widgets/standart_padding.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeProvider(),
        builder: (context, child) => _Scaffold(context: context));
  }
}

class _Scaffold extends StatelessWidget {
  final BuildContext context;
  const _Scaffold({required this.context});

  @override
  Widget build(BuildContext context) {
    HomeProvider homeProvider = Provider.of<HomeProvider>(context);
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
                const CircleAvatar(
                    radius: 80.0,
                    backgroundImage: NetworkImage(
                        "https://media.licdn.com/dms/image/C4D03AQFzpT9-aXnbaQ/profile-displayphoto-shrink_800_800/0/1658255499106?e=2147483647&v=beta&t=23PaetXBwmv5AhPJy63K2jWbCw0kuQwijN8jwPwnP0E")),
                SizedBox(
                  width: context.width * 0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
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
          SizedBox(
            height: context.height * 0.03,
          ),
          Container(
            height: context.height * 0.37,
            width: double.infinity,
            decoration: const BoxDecoration(color: Color(0xffEDF7FA)),
            child: MyBlogStandartPadding(
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Recent posts"),
                        TextButton(onPressed: () {}, child: Text("View all"))
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 9,
                      child: Builder(builder: (context) {
                        if (homeProvider.isLoading) {
                          return const Center(
                            child: MyBlogLoadingWidget(),
                          );
                        } else if (homeProvider.error.isNotEmpty) {
                          return Center(
                            child: Text(homeProvider.error),
                          );
                        } else {
                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                    right: context.width * 0.03),
                                child: Container(
                                  width: context.width * 0.34,
                                  decoration: const BoxDecoration(
                                      // color: Color(0xffFFFFFF)
                                      color: Colors.red),
                                  child: Text(homeProvider.data[index].title
                                      .toString()),
                                ),
                              );
                            },
                            itemCount: homeProvider.data.length,
                          );
                        }
                      }))
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
