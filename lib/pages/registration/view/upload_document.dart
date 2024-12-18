import 'package:e_shilf/core/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../core/routs.dart';
import 'widget/list_od_pdf.dart';
import 'widget/upload_widget.dart';

class UploadDocumentScreen extends StatelessWidget {
  const UploadDocumentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "تحميل الملفات",
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              color: AppColors.colorWhite, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: AppColors.primaryColorLight,
        iconTheme: const IconThemeData(color: AppColors.colorWhite),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("يرجى تحميل وثائق التحقق الخاصة بك",
                style: Theme.of(context).textTheme.headlineLarge),
            const SizedBox(
              height: 20,
            ),
            const UploadWidget(),
            const SizedBox(
              height: 20,
            ),
            Text("ملفاتك", style: Theme.of(context).textTheme.headlineLarge),
            const SizedBox(
              height: 10,
            ),
            const ListOfDdfs(),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRouts.registerStatus);
                    },
                    color: AppColors.primaryColorDark,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    height: 50,
                    child: Text(
                      "رفع الملفات",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: AppColors.colorWhite),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
