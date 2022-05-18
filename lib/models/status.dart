class Status {
  final String userName;
  final String imageUrl;
  final String date;
  String? message;
  bool? isSeen;

  Status({
    required this.userName,
    required this.imageUrl,
    required this.date,
  });
}

final statuses = [
    Status(
      userName: 'Foto Sushi',
      imageUrl: 'assets/images/photo3.jpg',
      date: 'Today, 4:29 AM',
    ),
    Status(
      userName: 'Yasin Mohammadi',
      imageUrl: 'assets/images/photo9.jpg',
      date: 'Today, 5:10 AM',
    ),
  ];