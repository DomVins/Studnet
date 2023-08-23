class News {
  String title;
  String publishDate;
  String imageUrl;
  String content;
  String authorName;
  String authorProfileImageUrl;
  bool liked;
  int loves;
  int comments;

  News(
      this.title,
      this.publishDate,
      this.imageUrl,
      this.content,
      this.authorName,
      this.authorProfileImageUrl,
      this.liked,
      this.loves,
      this.comments);
}

class Post {
  String date;
  String? imageUrl;
  String? content;
  String authorName;
  String authorProfileImageUrl;
  bool liked;
  int loves;
  int comments;

  Post.text(this.date, this.content, this.authorName,
      this.authorProfileImageUrl, this.liked, this.loves, this.comments);

  Post.image(this.date, this.imageUrl, this.authorName,
      this.authorProfileImageUrl, this.liked, this.loves, this.comments);

  Post.both(this.date, this.content, this.imageUrl, this.authorName,
      this.authorProfileImageUrl, this.liked, this.loves, this.comments);
}

class DidYouKnow {
  String title;
  String content;
  String imageUrl;

  DidYouKnow(this.title, this.content, this.imageUrl);
}

class HubObject {
  String title;
  String description;

  HubObject(this.title, this.description);
}
