import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:kakao/components/chat_icon_button.dart';
import 'package:kakao/components/my_chat.dart';
import 'package:kakao/components/other_chat.dart';
import 'package:kakao/components/time_line.dart';

class ChatRoomScreen extends StatefulWidget {
  const ChatRoomScreen({Key? key}) : super(key: key);

  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  final List<MyChat> chats = [];
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFb2c7da),
      child: Scaffold(
        body: Container(
          color: Color(0xFFb2c7da),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Text(
                "홍길동",
                style: Theme.of(context).textTheme.headline6,
              ),
              actions: [
                Icon(FontAwesomeIcons.search, size: 20),
                SizedBox(width: 25),
                Icon(FontAwesomeIcons.bars, size: 20),
                SizedBox(width: 25),
              ],
            ),
            body: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          TimeLine(time: "2020년 1월 1일 금요일"),
                          OtherChat(
                            name: "홍길동",
                            text: "니가 선생이야?",
                            time: "오전 10:10",
                          ),
                          MyChat(
                            text: "힘들면 말해라 도와준다.",
                            time: "오전 11:20",
                          ),
                          ...List.generate(
                              chats.length, (index) => chats[index]),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  color: Colors.white,
                  child: Row(
                    children: [
                      ChatIconButton(icon: Icon(FontAwesomeIcons.plusSquare)),
                      Expanded(
                        child: Container(
                          child: TextField(
                            controller: _textController,
                            maxLines: 1,
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                            onSubmitted: _handleSubmitted,
                          ),
                        ),
                      ),
                      ChatIconButton(icon: Icon(FontAwesomeIcons.smile)),
                      ChatIconButton(icon: Icon(FontAwesomeIcons.cog)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleSubmitted(text) {
    _textController.clear();

    setState(() {
      chats.add(
        MyChat(
          text: text,
          time: DateFormat("a K:m")
              .format(new DateTime.now())
              .replaceAll("AM", "오전")
              .replaceAll("PM", "오후"),
        ),
      );
    });
  }
}
