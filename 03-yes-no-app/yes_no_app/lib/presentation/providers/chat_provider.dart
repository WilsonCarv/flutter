import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  List<Message> messages = [
    Message(text: 'Hello', fromWho: FromWho.me),
    Message(text: 'How are you?', fromWho: FromWho.me),
  ];
  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.me);
    messages.add(newMessage);
    notifyListeners();
    scrollToBottom();
  }
  Future<void> scrollToBottom() async {

    await Future.delayed(const Duration(milliseconds: 100));
    
    Future.microtask(() {
      chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
  }
}
