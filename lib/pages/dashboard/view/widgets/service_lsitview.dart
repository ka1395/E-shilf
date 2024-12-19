import 'package:flutter/material.dart';

import '../../model/list_service.dart';

class ServiceListView extends StatelessWidget {
  const ServiceListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: services.length,
        itemBuilder: (context, index) {
          return LayoutBuilder(builder: (context, constrains) {
            return Column(
              children: [
                Container(
                  height: constrains.maxHeight * .7,
                  margin: const EdgeInsetsDirectional.only(end: 10),
                  width: MediaQuery.sizeOf(context).width * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(
                          services[index].imageUrl,
                        ),
                        fit: BoxFit.cover),
                  ),
                  child: const Center(
                    child: Text("Service"),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  services[index].title,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            );
          });
        },
      ),
    );
  }
}
