import 'package:flutter/material.dart';
import 'package:whatsapp_ui/chat_item.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  List<ChatItem> chats = [
    ChatItem(
      image: "assets/images/img.png",
      name: "Abood",
      message: "How are you",
      messageNum: 2,
    ),
    ChatItem(
      image: "assets/images/img_2.png",
      name: "Group A",
      message: "Hello",
      messageNum: 188,
    ),
    ChatItem(
      image: "assets/images/img_1.png",
      name: "Mohamed",
      message: "can you help me please",
      messageNum: 12,
    ),
    ChatItem(
      image: "assets/images/img_3.png",
      name: "Group 2",
      message: "",
      messageNum: 0,
    ),
    ChatItem(
      image: "assets/images/img.png",
      name: "Abood",
      message: "How are you",
      messageNum: 100,
    ),
    ChatItem(
      image: "assets/images/img_2.png",
      name: "Group A",
      message: "Hello",
      messageNum: 9,
    ),
    ChatItem(
      image: "assets/images/img_1.png",
      name: "Mohamed",
      message: "can you help me please",
      messageNum: 0,
    ),
    ChatItem(
      image: "assets/images/img_3.png",
      name: "Group 2",
      message: "",
      messageNum: 0,
    ),
    ChatItem(
      image: "assets/images/img.png",
      name: "Abood",
      message: "How are you",
      messageNum: 2,
    ),
    ChatItem(
      image: "assets/images/img_2.png",
      name: "Group A",
      message: "Hello",
      messageNum: 0,
    ),
    ChatItem(
      image: "assets/images/img_1.png",
      name: "Mohamed",
      message: "can you help me please",
      messageNum: 12,
    ),
    ChatItem(
      image: "assets/images/img_3.png",
      name: "Group 2",
      message: "",
      messageNum: 0,
    ),
    ChatItem(
      image: "assets/images/img.png",
      name: "Abood",
      message: "How are you",
      messageNum: 2,
    ),
    ChatItem(
      image: "assets/images/img_2.png",
      name: "Group A",
      message: "Hello",
      messageNum: 88,
    ),
    ChatItem(
      image: "assets/images/img_1.png",
      name: "Mohamed",
      message: "can you help me please",
      messageNum: 22,
    ),
    ChatItem(
      image: "assets/images/img_3.png",
      name: "Group 2",
      message: "",
      messageNum: 0,
    ),
    ChatItem(
      image: "assets/images/img.png",
      name: "Abood",
      message: "How are you",
      messageNum: 2,
    ),
    ChatItem(
      image: "assets/images/img_2.png",
      name: "Group A",
      message: "Hello",
      messageNum: 288,
    ),
    ChatItem(
      image: "assets/images/img_1.png",
      name: "Mohamed",
      message: "can you help me please",
      messageNum: 12,
    ),
    ChatItem(
      image: "assets/images/img_3.png",
      name: "Group 2",
      message: "",
      messageNum: 0,
    ),
    ChatItem(
      image: "assets/images/img.png",
      name: "Abood",
      message: "How are you",
      messageNum: 0,
    ),
    ChatItem(
      image: "assets/images/img_2.png",
      name: "Group A",
      message: "Hello",
      messageNum: 88,
    ),
    ChatItem(
      image: "assets/images/img_1.png",
      name: "Mohamed",
      message: "can you help me please",
      messageNum: 12,
    ),
    ChatItem(
      image: "assets/images/img_3.png",
      name: "Group 2",
      message: "",
      messageNum: 25,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[900],
                prefixIcon: Icon(Icons.search_rounded),
                hintText: "Ask Meta AI or Search",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: chats.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: ClipOval(
                    child: Image.asset(
                      chats[index].image,
                      width: 50,
                      height: 50,
                    ),
                  ),
                  title: Text(
                    chats[index].name,
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(chats[index].message),
                  trailing:
                      chats[index].messageNum != 0
                          ? ClipOval(
                            child: Container(
                              color: Colors.green,
                              width: 24,
                              height: 24,
                              alignment: Alignment.center,
                              child: Text(
                                chats[index].messageNum <= 99
                                    ? chats[index].messageNum.toString()
                                    : "+99",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          )
                          : null,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
