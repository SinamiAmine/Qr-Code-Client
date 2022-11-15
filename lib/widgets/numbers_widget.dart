import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NumbersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildButton(context, '4.2', 'Ranking',() => {}),
          buildDivider(),
          buildButton(context, '0524406854', 'For reservation',() => launch("tel://0524406854")),
          buildDivider(),
          buildButton(context, '2743', 'Like',()=>{}),
        ],
      );
  Widget buildDivider() => Container(
        height: 12,
        child: VerticalDivider(),
      );

  Widget buildButton(BuildContext context, String value, String text,void Function()? tap) =>
      MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 4),
        onPressed: tap,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              value,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 2),
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );
}
