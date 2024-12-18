import 'package:e_shilf/core/app_colors.dart';
import 'package:e_shilf/core/routs.dart';
import 'package:flutter/material.dart';

import 'package:pinput/pinput.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: Theme.of(context).textTheme.headlineMedium,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryColorLight),
        borderRadius: BorderRadius.circular(10),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "تاكيد الرقم",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("ادخل الرمز الذي ارسل الي الرقم",
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(
              height: 40,
            ),
            Text(
              "+9668001241616",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: AppColors.colorGray),
            ),
            const SizedBox(height: 80),
            Pinput(
              controller: phoneController,
              defaultPinTheme: defaultPinTheme,
              length: 6,
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(AppRouts.uploadDocumentScreen);
                    },
                    color: AppColors.primaryColorDark,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    height: 50,
                    child: Text(
                      "تاكيد",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: AppColors.colorWhite),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Text("لم تصلك الرسالة؟",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: AppColors.colorGray)),
            TextButton(
                onPressed: () {},
                child: Text(
                  "اعادة ارسال",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: AppColors.primaryColorDark),
                ))
          ],
        ),
      ),
    );
  }
}
