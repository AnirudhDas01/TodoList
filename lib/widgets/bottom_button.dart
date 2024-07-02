import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key, required this.textTitle, required this.onTap});
  final String textTitle;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth,
      height: 70,
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.lightBlueAccent,
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
        onPressed: onTap,
        child: Text(
          textTitle,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
