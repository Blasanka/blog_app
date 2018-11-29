class Comment {
  final String text;
  final String by;
  final DateTime createdOn;
  final int likes;

  const Comment({
    this.text,
    this.by,
    this.createdOn,
    this.likes = 0
  });
}