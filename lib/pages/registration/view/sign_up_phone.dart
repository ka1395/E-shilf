import 'package:e_shilf/core/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../core/routs.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUpPhoneNumber extends StatelessWidget {
  const SignUpPhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "التحقق من رقم الهاتف",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("رقم الهاتف",
                style: Theme.of(context).textTheme.headlineMedium),
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
                              Navigator.pushNamed(context, AppRouts.otp);
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
