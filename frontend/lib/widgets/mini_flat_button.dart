import 'package:flutter/material.dart';

class MiniFlatButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final Color color;

  const MiniFlatButton(
      {Key key, this.color, @required this.child, @required VoidCallback this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: RaisedButton(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        onPressed: this.onPressed,
        color: this.color ?? Theme.of(context).primaryColorLight,
        child: this.child,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      height: 28,
    );
  }
}
