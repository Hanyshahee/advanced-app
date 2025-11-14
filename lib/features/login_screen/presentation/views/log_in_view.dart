import 'package:advancedapp/core/helper/scpacing.dart';
import 'package:advancedapp/core/theming/styles.dart';
import 'package:advancedapp/core/widgets/app_text_boutton.dart';
import 'package:advancedapp/core/widgets/login_form_feild.dart';
import 'package:advancedapp/features/login_screen/presentation/views/widgets/already_have_account_text.dart';
import 'package:advancedapp/features/login_screen/presentation/views/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogInView extends StatefulWidget {
  const LogInView({super.key});

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: TextStyles.font24BlueBold),
                verticalSpac(8),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last \nlogged in.",
                  style: TextStyles.font14gryregular,
                ),
                verticalSpac(36),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      LoginFormFeild(hintText: 'Email'),
                      verticalSpac(18),
                      LoginFormFeild(
                        hintText: 'Password',
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      verticalSpac(24),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          "Forgot Password?",
                          style: TextStyles.font13Blueregular,
                        ),
                      ),
                      verticalSpac(40),
                      AppTextBoutton(
                        buttonText: 'Login',
                        textStyle: TextStyles.font16WhiteSmiBold,
                        onPressed: () {},
                      ),
                      verticalSpac(16),
                      const TermsAndConditionsText(),
                      verticalSpac(60),
                      const AlreadyHaveAccountText(),
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
