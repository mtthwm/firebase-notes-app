import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteTile extends StatefulWidget {
  const NoteTile({
    Key? key,
    this.title = "",
    this.text = "",
    this.color = Colors.limeAccent,
  }) : super(key: key);

  final String title;
  final String text;
  final Color color;

  @override
  _NoteTileState createState() => _NoteTileState();
}

class _NoteTileState extends State<NoteTile> {
  @override
  Widget build (BuildContext buildContext) {
    return (
      Card(
        child: InkWell(
          onTap: (){},
          child: Container(
            padding: EdgeInsets.all(15),
            color: widget.color,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.ltr,
                    ),
                  ],
                ),
                Text(
                  widget.text,
                  textAlign: TextAlign.start,
                  textDirection: TextDirection.ltr,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Updated 7/4/2021',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                )
              ],
            )
          ),
        )
      )
    );
  }
}