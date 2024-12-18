
import 'package:e_shilf/core/app_colors.dart';
import 'package:e_shilf/core/routs.dart';
import 'package:flutter/material.dart';

import '../../registration/view/widget/custom_textformfield.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignUpState();
}

class _SignUpState extends State<SignIn> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "تسجيل الدخول",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextFormField(
                      controller: phoneController,
                      hintText: "ادخل رقم الهاتف",
                      title: "رقم الهاتف"),
                  CustomTextFormField(
                      controller: passwordController,
                      hintText: "ادخل كلمة المرور",
                      title: "كلمة المرور"),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRouts.resetPassword);
                      },
                      child: Text(
                        "نسيت كلمة المرور؟",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(color: AppColors.primaryColorDark),
                      )),
                  CheckboxListTile(
                    contentPadding: EdgeInsets.zero,
                    value: isCheck,
                    activeColor: AppColors.primaryColorLight,
                    title: Text(
                      " ارسال كود التحقق علي الهاتف",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    onChanged: (value) {
                      setState(() {
                        isCheck = !isCheck;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {
                            if (isCheck) {
                              Navigator.pushNamed(context, AppRouts.oTPLogin);
                            } else {
                              Navigator.pushReplacementNamed(
                                  context, AppRouts.homeScreen);
                            }
                          },
                          color: AppColors.primaryColorDark,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          height: 50,
                          child: Text(
                            "تسجيل الدخول",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: AppColors.colorWhite),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("ليس لديك حساب؟",
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(color: AppColors.colorGray)),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, AppRouts.signUp);
                          },
                          child: Text(
                            "انشاء حساب",
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(color: AppColors.primaryColorDark),
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
