class ListOffers {
  final String title;
  final String description;
  final String imageUrl;

  ListOffers({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}

List<ListOffers> offers = [
  ListOffers(
    title: "التوصيل مجانا",
    description: "عرض خاص لمقدمي الخدمه",
    imageUrl: "assets/images/offer3.jpg",
  ),
  ListOffers(
    title: "متاح الان",
    description: "تواصل معنا للحصول علي خدماتنا",
    imageUrl: "assets/images/offer1.jpg",
  ),
  ListOffers(
    title: "20% خصم",
    description: "عرض خاص للعملاء الجدد",
    imageUrl: "assets/images/offer2.jpg",
  ),
];
