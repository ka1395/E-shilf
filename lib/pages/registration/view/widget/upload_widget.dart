import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';

class UploadWidget extends StatelessWidget {
  const UploadWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Card(
        clipBehavior: Clip.antiAlias,
        color: AppColors.colorWhite,
        child: InkWell(
          onTap: () {},
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.upload_file_outlined,
                  size: 50,
                  color: AppColors.primaryColorLight,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text("حمل الملف",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(
                          fontWeight: FontWeight.normal,
                        )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

