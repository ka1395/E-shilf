import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';
import '../../../core/routs.dart';
import 'widget/status_account.dart';

class RegisterStatus extends StatelessWidget {
  const RegisterStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FaildStatus(),
      // body: SuccessStatus(),
    );
  }
}

class FaildStatus extends StatelessWidget {
  const FaildStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const StatusAccount(
          color: AppColors.colorRed,
          title: "فشل",
          icon: Icons.highlight_remove_sharp,
          subtitle:
              "هناك مشكله في البيانات المدخلة \n المفات غير واضحه برجاءاعادة رفع الملفات",
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("تم رفض السحاب الخاص بك",
                  style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          AppRouts.signUp, (route) => false);
                    },
                    color: AppColors.colorRed,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    height: 50,
                    child: Text(
                      "رجاء المحاولة مرة اخري",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: AppColors.colorWhite),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SuccessStatus extends StatelessWidget {
  const SuccessStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const StatusAccount(
          color: Colors.green,
          title: "نجاح",
          icon: Icons.check_circle_outline_outlined,
          subtitle: "تم تحقق من البيانات  \n تهانينا لقد تم تسجيلك بنجاح",
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("تم انشاء الحساب بنجاح",
                  style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          AppRouts.signin, (route) => false);
                    },
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    height: 50,
                    child: Text(
                      "رجاء تسجيل الدخول",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: AppColors.colorWhite),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
