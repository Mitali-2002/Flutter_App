import 'package:flutter/material.dart';

class ChatListModel{

  String name;
  String imgPath;
  String text;

  ChatListModel({
    required this.name,
    required this.imgPath,
    required this.text
  });

  static List<ChatListModel> getChatList() {
    List<ChatListModel> chatList = [];

    chatList.add(
      ChatListModel(
          name: 'Welcome',
          imgPath: 'assets/images/chat_img/img_1.png',
          text: '59 new'
      )
    );

    chatList.add(
      ChatListModel(
          name: 'Production',
          imgPath: 'assets/images/chat_img/img_2.png',
          text: '59 new'
      )
    );

    chatList.add(
      ChatListModel(
          name: 'Trash',
          imgPath: 'assets/images/chat_img/img_3.png',
          text: '59 new'
      )
    );

    chatList.add(
      ChatListModel(
          name: 'Archived',
          imgPath: 'assets/images/chat_img/img_4.png',
          text: '59 new'
      )
    );

    return chatList;
  }
}