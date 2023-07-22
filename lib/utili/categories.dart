import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String text;
  final String secondCategorytext;
  final String thirdCategorytext;
  const Categories(
      {super.key,
      required this.text,
      required this.secondCategorytext,
      required this.thirdCategorytext});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.amber[200],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.purple[200],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                secondCategorytext,
                style: TextStyle(
                  color: Colors.deepPurple[600],
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue[100],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                thirdCategorytext,
                style: TextStyle(
                  color: Colors.blue[600],
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
