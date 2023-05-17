import 'package:flutter/material.dart';
import 'package:video_calling_with_agora/chat/widget/message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.only(bottom: 16),
          reverse: true,
          itemCount: _messages.length,
          itemBuilder: (_, index) => _messages[index],
        separatorBuilder: (_,__) => const SizedBox(height: 16)
         ),
    );
  }
}
const _messages = <MessageBubble>[
  MessageBubble(message: "Hello Sam",
      date: "May 17, 6:32 PM"),
  MessageBubble(message: "Hey Roger",
      date: "May 17, 6:34 PM"),
  MessageBubble(message: "How are you?",
      date: "May 17, 6:38 PM"),
  MessageBubble(message: " I am Fine",
      date: "May 17, 6:50 PM")
];
