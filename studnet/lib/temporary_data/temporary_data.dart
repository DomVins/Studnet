import '../models/models.dart';

List<News> news = [
  News(
      "Jostum Resumes Academic Activities",
      "13th August 2023",
      "assets/images/news1.jpeg",
      "Release of Academic Calendar Release of Academic Calendar Release of Academic Calendar",
      "Students Union Jostum",
      "assets/images/union.jpg",
      false,
      700,
      200),
  News(
      "School resumption raises freshers concern",
      "20th August 2023",
      "assets/images/news2.jpg",
      "School resumption raises freshers concern School resumption raises freshers concern School resumption raises freshers concern",
      "Students Union Jostum",
      "assets/images/union.jpg",
      true,
      540,
      300),
];

List<Post> posts = [
  Post.text(
      "20th August 2023",
      "School resumption raises freshers concern School resumption raises freshers concern School resumption raises freshers concern",
      "Chidi Obinna",
      "assets/images/user1.png",
      true,
      540,
      300),
  Post.text(
      "100th August 2023",
      "School resumption raises freshers concern School resumption raises freshers concern School resumption raises freshers concern",
      "Beauty of man parade",
      "assets/images/user1.png",
      true,
      540,
      300),
  Post.both(
      "20th August 2023",
      "School resumption raises freshers concern School resumption raises freshers concern School resumption raises freshers concern",
      "assets/images/user1.png",
      "Okechukwu Johnson",
      "assets/images/user1.png",
      true,
      540,
      300),
];

DidYouKnow didYouKnows = DidYouKnow("Studnet is an app for students",
    "Chidi Obinna is a student", "assets/images/vincent.jpg");

List<HubObject> hubItems = [
  HubObject("Tutorial Videos",
      "Download high quality tutorial videos on any course of your choice for free."),
  HubObject("Study & Exam Tips",
      "Ace your assessments by following authentic and well tested study tips that work."),
  HubObject(
      "Assignments", "Get a professional help you out with your assignments"),
  HubObject("Computer based tests",
      "Test your knowledge on selected fields and know your competence level in that field."),
  HubObject("Final year projects",
      "Get assistance of all kinds on on your final year projects from professionals in your field."),
  HubObject("Thesis", "Get your thesis done and delivered fast."),
  HubObject("Personal Tutor",
      "Clear description of the service will be placed here."),
];
