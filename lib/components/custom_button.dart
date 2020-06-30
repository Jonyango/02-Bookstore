import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {@required this.buttonText,
      @required this.iconData,
      this.onPressed,
      @required this.color});

  final String buttonText;
  final IconData iconData;
  final Function onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.4,
      child: RaisedButton(
        color: color,
        elevation: 6.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                buttonText,
                style: TextStyle(
                    color: color == Theme.of(context).accentColor
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).textTheme.bodyText1.color,
                    letterSpacing: 1.2),
              ),
              Icon(
                iconData,
                color: color == Theme.of(context).primaryColor
                    ? Theme.of(context).accentColor
                    : Theme.of(context).primaryColor,
                size: 14.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
