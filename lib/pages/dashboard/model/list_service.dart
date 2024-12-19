class ServicesModel {
  final String title;
  // final String description;
  final String imageUrl;

  ServicesModel({
    required this.title,
    // required this.description,
    required this.imageUrl,
  });
}

List<ServicesModel> services = [
  ServicesModel(
    title: "طلب خدمة نقل",
    imageUrl: "assets/images/service1.png",
  ),
  ServicesModel(
    title: "طلب دعم فني",
    imageUrl: "assets/images/service4.png",
  ),
  ServicesModel(
    title: "طلب قطع غيار",
    imageUrl: "assets/images/service2.png",
  ),
  ServicesModel(
    title: "طلب تخليص جمركي",
    imageUrl: "assets/images/service3.png",
  ),
];