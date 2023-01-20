import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      constraints: BoxConstraints(maxWidth: 240),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.blue, width: 2),
            borderRadius: BorderRadius.circular(5),
          ),
          backgroundColor: Colors.white,
          minimumSize: Size(MediaQuery.of(context).size.width / 2, 40),
        ),
        onPressed: onTap,
        child: Text(text, style: TextStyle(color: Colors.blue, fontSize: 16)),
      ),
    );
  }
}

