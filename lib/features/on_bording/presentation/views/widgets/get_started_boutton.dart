import 'package:advancedapp/core/theming/styles.dart';
import 'package:advancedapp/features/login_screen/presentation/views/log_in_view.dart';
import 'package:flutter/material.dart';

class GetStartedBoutton extends StatelessWidget {
  const GetStartedBoutton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Navigate to the next screen or perform an action
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LogInView()),
        );
      },
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
