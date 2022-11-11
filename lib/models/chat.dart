class Chat {
  final String image;
  final String title;
  final String content;
  final String time;
  final String count;

  Chat({
    required this.image,
    required this.title,
    required this.content,
    required this.time,
    required this.count,
  });
}

final String _urlPrefix =
    "https://raw.githubusercontent.com/flutter-coder/ui_images/master/messenger";

List<Chat> chats = [
  Chat(
    image: "${_urlPrefix}_man_1.jpg",
    title: "이성진1",
    content: "힘들면 말해라 도와준다.",
    time: "오후 11:00",
    count: "0",
  ),
  Chat(
    image: "${_urlPrefix}_woman_1.jpg",
    title: "이성진6",
    content: "힘드나?",
    time: "오전 09:30",
    count: "1",
  ),
];
