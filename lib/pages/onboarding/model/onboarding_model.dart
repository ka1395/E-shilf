List<OnBoardingModle> pages = [
  OnBoardingModle(
      imagePath: "assets/images/1.png", title: "تحقق من استلام الشاحنة"),
  OnBoardingModle(imagePath: "assets/images/2.png", title: "وفر حتى 30% معنا"),
  OnBoardingModle(imagePath: "assets/images/3.png", title: "لنبدأ"),
];
class OnBoardingModle {
  final String imagePath;
  final String title;
  OnBoardingModle({required this.imagePath, required this.title});
}
