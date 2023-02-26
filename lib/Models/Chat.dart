import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import '../Utils/Text/Message.dart';

class ChatPage extends StatefulWidget {
  @override
  State<ChatPage> createState() => _ChatPage();
}

class _ChatPage extends State<ChatPage> {
  List<MessageChat> message = [
    MessageChat(
        text: "Hello James",
        date: DateTime.now().subtract(
          Duration(days: 1, minutes: 8),
        ),
        isSentByMe: false),
    MessageChat(
        text: "Hi",
        date: DateTime.now().subtract(
          Duration(days: 3, minutes: 4),
        ),
        isSentByMe: true),
    MessageChat(
        text: "Hi",
        date: DateTime.now().subtract(
          Duration(days: 4, minutes: 8),
        ),
        isSentByMe: false),
    MessageChat(
        text: "Hi",
        date: DateTime.now().subtract(
          Duration(days: 4, minutes: 5),
        ),
        isSentByMe: true),
    MessageChat(
        text: "Hi",
        date: DateTime.now().subtract(
          Duration(days: 5, minutes: 8),
        ),
        isSentByMe: false),
    MessageChat(
        text: "Hi",
        date: DateTime.now().subtract(
          Duration(days: 6, minutes: 7),
        ),
        isSentByMe: true),
    MessageChat(
        text: "Hi",
        date: DateTime.now().subtract(
          Duration(days: 7, minutes: 30),
        ),
        isSentByMe: false),
    MessageChat(
        text: "Hi",
        date: DateTime.now().subtract(
          Duration(days: 7, minutes: 50),
        ),
        isSentByMe: true),
    MessageChat(
        text: "Hi",
        date: DateTime.now().subtract(
          Duration(days: 7, minutes: 60),
        ),
        isSentByMe: false),
    MessageChat(
        text: "Hi",
        date: DateTime.now().subtract(
          Duration(days: 9, minutes: 10),
        ),
        isSentByMe: true),
    MessageChat(
        text: "Hi",
        date: DateTime.now().subtract(
          Duration(days: 9, minutes: 20),
        ),
        isSentByMe: false),
  ].reversed.toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Chat",
          style: const TextStyle(
            fontSize: 25,
            color: Color.fromARGB(255, 250, 250, 250),
            fontFamily: 'SPHERE-FEZ',
          ),
        ),
        backgroundColor: Color.fromARGB(255, 7, 7, 7),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: GroupedListView<MessageChat, DateTime>(
                padding: const EdgeInsets.all(8),
                reverse: true,
                order: GroupedListOrder.DESC,
                useStickyGroupSeparators: true,
                floatingHeader: true,
                elements: message,
                groupBy: (message) => DateTime(
                  message.date.year,
                  message.date.month,
                  message.date.day,
                ),
                groupHeaderBuilder: (MessageChat message) => SizedBox(
                  height: 40,
                  child: Center(
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          DateFormat.yMMMd().format(message.date),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                itemBuilder: (context, MessageChat message) => Align(
                  alignment: message.isSentByMe
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Card(
                    elevation: 8,
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: AutoSizeText(message.text),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.grey.shade300,
            child: TextField(
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(12),
                  hintText: "Your Messsage here .."),
              onSubmitted: (text) {
                final message = MessageChat(
                    text: text, date: DateTime.now(), isSentByMe: true);
                setState(() => message.add(message));
              },
            ),
          ),
        ],
      ),
    );
  }
}
