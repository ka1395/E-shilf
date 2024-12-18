import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../core/app_colors.dart';
import '../../core/routs.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController? phoneController;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "نسيت كلمة المرور",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
                "يرجى إدخال رقم هاتفك للحصول على رمز المرور لمرة واحدة وكلمة المرور المؤقتة",
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 30,
            ),
            Form(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IntlPhoneField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        labelText: 'ادخل رقم الهاتف',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                        errorText: "الرقم غير صحيح",
                      ),
                      initialCountryCode: 'SA',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, AppRouts.otpResetPassword);
                            },
                            color: AppColors.primaryColorDark,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            height: 50,
                            child: Text(
                              "ارسال رمز التحقق",
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
