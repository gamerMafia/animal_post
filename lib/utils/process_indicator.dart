import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

final _tKey = GlobalKey(debugLabel: 'overlay_parent');

bool isDarkTheme = false;
var spinKit;

class Loading extends StatelessWidget {
  final Widget? child;
  final bool darkTheme;

  const Loading({Key? key, this.child, this.darkTheme = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    isDarkTheme = darkTheme;
    return SizedBox(
      key: _tKey,
      child: child,
    );
  }
}
