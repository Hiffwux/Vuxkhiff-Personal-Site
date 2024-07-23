import "package:flutter/material.dart";

class VuxkilleMarkStackBlock extends StatelessWidget {
  final String date;
  final String year;
  final String time;
  final String numOfPage;
  final Color? color;
  const VuxkilleMarkStackBlock({super.key, required this.date, required this.year, required this.time, required this.numOfPage, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                date,
                style: TextStyle(
                    fontFamily: 'Vuxkille', color: color ?? Colors.black),
              ),
              Text(
                year,
                style: TextStyle(
                    fontFamily: 'Vuxkille', color: color ??  Colors.black),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                time,
                style: TextStyle(
                    fontFamily: 'Vuxkille', color: color ??  Colors.black),
              ),
              Text(
                numOfPage,
                style: TextStyle(
                    fontFamily: 'Vuxkille', color: color ??  Colors.black),
              )
            ],
          ),
        ],
      ),
    );
  }
}
