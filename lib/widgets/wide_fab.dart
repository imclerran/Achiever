import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WideFab extends StatelessWidget {
  WideFab({
    @required this.onPressed,
    @required this.buttonText,
    this.fillColor,
    this.splashColor,
    this.textColor,
  });

  final GestureTapCallback onPressed;
  final String buttonText;
  // TODO: use swatches
  final Color fillColor;
  final Color splashColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.lightBlue,
      splashColor: Colors.lightBlue[300],
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 20.0,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Icon(
              Icons.add,
              color: Colors.amber,
            ),
            const SizedBox(width: 8.0),
            Text(
              buttonText,
              //"INCREMENT",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      onPressed: onPressed,
      shape: const StadiumBorder(),
    );
  }
}