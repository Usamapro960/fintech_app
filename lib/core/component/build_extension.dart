import 'package:flutter/cupertino.dart';

extension BuildContextExtension on BuildContext {
  Future<dynamic> push(Widget screen) {
    return Navigator.push(this, CupertinoPageRoute(builder: (_) => screen));
  }
}
