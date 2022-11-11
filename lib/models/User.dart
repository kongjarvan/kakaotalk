class User {
  final String backgroundImage;
  final String name;
  final String intro;

  User({
    required this.backgroundImage,
    required this.name,
    required this.intro,
  });
}

final String _urlPrefix =
    "https://raw.githubusercontent.com/flutter-coder/ui_images/master/messenger";

User me = User(
  backgroundImage: "${_urlPrefix}_me.jpg",
  name: "이성진",
  intro: "힘들면 말해라 도와준다",
);

List<User> friends = [
  User(
    backgroundImage: "${_urlPrefix}_man_1.jpg",
    name: "이성진1",
    intro: "힘들면 말해라 도와준다",
  ),
  User(
    backgroundImage: "${_urlPrefix}_man_2.jpg",
    name: "이성진2",
    intro: "힘들면 말해라 도와준다",
  ),
  User(
    backgroundImage: "${_urlPrefix}_man_3.jpg",
    name: "이성진3",
    intro: "힘들면 말해라 도와준다",
  ),
  User(
    backgroundImage: "${_urlPrefix}_man_4.jpg",
    name: "이성진4",
    intro: "힘들면 말해라 도와준다",
  ),
  User(
    backgroundImage: "${_urlPrefix}_man_5.jpg",
    name: "이성진5",
    intro: "힘들면 말해라 도와준다",
  ),
  User(
    backgroundImage: "${_urlPrefix}_woman_1.jpg",
    name: "이성진6",
    intro: "힘들면 말해라 도와준다",
  ),
  User(
    backgroundImage: "${_urlPrefix}_woman_2.jpg",
    name: "이성진7",
    intro: "힘들면 말해라 도와준다",
  ),
  User(
    backgroundImage: "${_urlPrefix}_woman_3.jpg",
    name: "이성진8",
    intro: "힘들면 말해라 도와준다",
  ),
  User(
    backgroundImage: "${_urlPrefix}_woman_4.jpg",
    name: "이성진9",
    intro: "힘들면 말해라 도와준다",
  ),
  User(
    backgroundImage: "${_urlPrefix}_woman_5.jpg",
    name: "이성진10",
    intro: "힘들면 말해라 도와준다",
  ),
];
