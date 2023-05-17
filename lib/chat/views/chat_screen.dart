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
          itemCount: 0,
          itemBuilder: (_, index) => const SizedBox.shrink(),
        separatorBuilder: (_,__) => const SizedBox(height: 16)
         ),
    );
  }
}
// const _message = <MessageBubble>[]: The Declaration '_message'
