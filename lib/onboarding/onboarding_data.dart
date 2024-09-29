class OnBoarding {
  final String title;
  final String subtitle;
  final String image;

  OnBoarding({
    required this.title,
    required this.image,
    required this.subtitle,
  });
}

List<OnBoarding> onboardingContents = [
  OnBoarding(
    title: 'Find best place\n to stay in good price',
    subtitle: "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, seed.",
    image: 'assets/images/logo.png',
  ),
  OnBoarding(
    title: 'Fast sell your property\nin just one click',
    subtitle: "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed.",
    image: 'assets/images/Next2.png',
  ),
  OnBoarding(
    title: 'Find perfect choice for\nyour future house ',
    subtitle: "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed.",
    image: 'assets/images/Next3.png',
  ),

];
