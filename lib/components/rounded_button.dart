import 'package:flutter/material.dart';
class RoundedButton extends StatelessWidget {
  const RoundedButton({
    this.title, this.colour, @required this.onPressed
  });
  final String title;
  final Color colour;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: this.onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            '${this.title}',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
