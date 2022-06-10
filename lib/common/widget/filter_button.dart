import 'package:flutter/material.dart';

class FilterButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FilterButtonState();
  }
}

class FilterButtonState extends State<FilterButton> {
  @override
  Widget build(BuildContext context) {
    return Card(color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            Image.asset(
              'assets/png/picture.png',
              width: 20,
              height: 20,
            ),
            const Text(
              "Item Type Name",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
