import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';
import '../../modle/list_pdf.dart';

class ListOfDdfs extends StatelessWidget {
  const ListOfDdfs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Card(
            color: AppColors.colorWhite,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Image(
                    image: AssetImage("assets/images/pdf.png"),
                    width: 70,
                    height: 70,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data[index].name,
                          style: Theme.of(context).textTheme.bodyLarge),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "fixed size ${data[index].size}",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: AppColors.colorGray),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const CircleAvatar(
                    radius: 15,
                    backgroundColor: AppColors.primaryColorLight,
                    child: Icon(
                      Icons.done,
                      color: AppColors.colorWhite,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
