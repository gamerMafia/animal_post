import 'package:demo_project/constants/app_colors.dart';
import 'package:demo_project/constants/app_strings.dart';
import 'package:demo_project/controller/post_list_controller.dart';
import 'package:demo_project/utils/custom_dialog_box.dart';
import 'package:demo_project/utils/custom_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostListScreen extends StatelessWidget {
  const PostListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PostListController>(
        init: PostListController(),
        builder: (_) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                title: const Text(
                  'Animal Post',
                ),
              ),
              body: _.isLoading
                  ? SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: const Center(
                          child: CircularProgressIndicator(
                        color: AppColors.themeColor,
                      )))
                  : Container(
                      margin: const EdgeInsets.all(10),
                      child: ListView.builder(
                          itemCount: _.result!.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                showDialog(context: context,
                                    builder: (BuildContext context){
                                      return CustomDialogBox(
                                        title: _.result![index].title,
                                        descriptions: _.result![index].body![0].children![0].text,
                                        img:  _.result![index].mainImage!.asset!.ref,
                                        createAt: '${DateTime.parse(_.result![index].createdAt!).toLocal()}',
                                      );
                                    }
                                );
                              },
                              child: Card(
                                  child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 16.0, bottom: 8, top: 8, right: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    CustomImage(
                                      width: MediaQuery.of(context).size.width *
                                          0.30,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              0.30,
                                      image:
                                          '${_.result![index].mainImage!.asset!.ref}',
                                      placeholder: AppString.defaultImg,
                                      radius: 0,
                                      boxFit: BoxFit.fitWidth,
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.only(
                                                right: 13.0,
                                                top: 8.0,
                                                left: 16.0),
                                            child: Text(
                                              '${_.result![index].title}',
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                fontSize: 16.0,
                                                color: Color(0xFF212121),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                right: 13.0,
                                                top: 8.0,
                                                left: 16.0,
                                                bottom: 16.0),
                                            child: Text(
                                              '${_.result![index].body![0].children![0].text}',
                                              overflow: TextOverflow.fade,
                                              style: const TextStyle(
                                                fontSize: 13.0,
                                                color: Color(0xFF212121),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Container(
                                              padding: const EdgeInsets.only(
                                                  right: 13.0,
                                                  top: 8.0,
                                                  left: 16.0,
                                                  bottom: 5.0),
                                              child: Text(
                                                '${DateTime.parse(_.result![index].createdAt!).toLocal()}',
                                                overflow: TextOverflow.fade,
                                                style: const TextStyle(
                                                  fontSize: 13.0,
                                                  color: Color(0xFF212121),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                            );
                          }),
                    ),
            ),
          );
        });
  }
}
