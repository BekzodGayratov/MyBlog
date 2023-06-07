import 'package:blog/core/extension/media_query_ext.dart';
import 'package:blog/widgets/standart_padding.dart';
import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBlogStandartPadding(
        child: Padding(
          padding: EdgeInsets.only(
            top: context.height * 0.1,
          ),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: context.height * 0.02),
                child: SizedBox(
                  height: context.height * 0.25,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: context.height * 0.25,
                        width: context.width * 0.2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoTHaZI8k8owkWB-KjEMleRJZvsAVxFWu-4g&usqp=CAU"),
                                fit: BoxFit.cover),
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      SizedBox(
                        width: context.width * 0.02,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Unired Mobile",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("Hello", overflow: TextOverflow.ellipsis,style: TextStyle(
                                      fontSize: 20.0,
                                      fontStyle: FontStyle.italic
                                      ),
                                  ),
                              ],
                            ),
                            Text("21.02.2022")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            itemCount: 10,
          ),
        ),
      ),
    );
  }
}
