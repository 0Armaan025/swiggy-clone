import 'package:flutter/material.dart';

export './theme/pallete.dart';

void moveToScreen(BuildContext context, Widget screen, bool isPushReplacement) {
  if (isPushReplacement) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => screen));
  } else {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
}
