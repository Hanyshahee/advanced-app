import 'package:advancedapp/core/theming/styles.dart';
import 'package:advancedapp/features/on_bording/presentation/views/widgets/doc_logo_and_named.dart';
import 'package:advancedapp/features/on_bording/presentation/views/widgets/doctor_image_and_text.dart';
import 'package:advancedapp/features/on_bording/presentation/views/widgets/get_started_boutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                const DocLogoAndNamed(),
                SizedBox(height: 30.h),
                const DoctorImageAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                       Text(
                        "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                        style: TextStyles.font13gryregular,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20.h),
                     const GetStartedBoutton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
