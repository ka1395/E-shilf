import 'package:e_shilf/core/app_colors.dart';
import 'package:e_shilf/core/routs.dart';
import 'package:flutter/material.dart';

import 'widget/custom_textformfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool isCheck = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "انشاء حساب جديد",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Form(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextFormField(
                        controller: nameController,
                        hintText: "ادخل الاسم",
                        title: "الاسم الكامل"),
                    CustomTextFormField(
                        controller: emailController,
                        hintText: "ادخل البريد الالكتروني",
                        title: "البريد الالكتروني"),
                    CustomTextFormField(
                        controller: phoneController,
                        hintText: "ادخل رقم الهاتف",
                        title: "رقم الهاتف"),
                    CustomTextFormField(
                        controller: passwordController,
                        hintText: "ادخل كلمة المرور",
                        title: "كلمة المرور"),
                    CustomTextFormField(
                        controller: confirmPasswordController,
                        hintText: "ادخل تأكيد كلمة المرور",
                        title: "تأكيد كلمة المرور"),
                    CheckboxListTile(
                      value: isCheck,
                      activeColor: AppColors.primaryColorLight,
                      title: Text(
                        "اوافق علي الشروط والاحكام",
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
                              Navigator.pushNamed(
                                  context, AppRouts.signUpPoneNumber);
                            },
                            color: AppColors.primaryColorDark,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            height: 50,
                            child: Text(
                              "التالي",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(color: AppColors.colorWhite),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
