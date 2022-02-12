import 'package:demo_project/constants/app_strings.dart';
import 'package:flutter/material.dart';

import 'custom_image.dart';

class CustomDialogBox extends StatefulWidget {
  final String? title, descriptions, createAt, img;

  const CustomDialogBox(
      {Key? key, this.title, this.descriptions, this.img,this.createAt})
      : super(key: key);

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(
              left: 20.0, top: 45 + 20.0, right: 20.0, bottom: 20.0),
          margin: const EdgeInsets.only(top: 45),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                widget.title!,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                widget.descriptions!,
                style: const TextStyle(fontSize: 14),
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 22,
              ),
              Row(
                children: [
                  const Text(
                    'CreatedAt : ',
                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    widget.createAt!,
                    style: const TextStyle(fontSize: 14),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              const SizedBox(
                height: 22,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      AppString.ok,
                      style: TextStyle(fontSize: 18,color: Colors.black),
                    )),
              ),
            ],
          ),
        ),
        Positioned(
          left: 20.0,
          right: 20.0,
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 45,
            child: CustomImage(
              image:
              '${widget.img}',
              placeholder: AppString.defaultImg,
              radius: 0,
              boxFit: BoxFit.fitWidth,
            ),
          ),
        ),
      ],
    );
  }
}
