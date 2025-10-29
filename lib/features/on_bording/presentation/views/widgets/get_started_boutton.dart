import 'package:advancedapp/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedBoutton extends StatelessWidget {
  const GetStartedBoutton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStatePropertyAll(Size(double.infinity, 50)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
      child: Text("Get Started", style: TextStyles.font16whietsmibold),
    );
  }
}
