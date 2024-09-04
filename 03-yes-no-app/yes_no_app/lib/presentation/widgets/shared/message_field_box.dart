import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();
    return TextFormField(
      controller: textController,
      decoration: InputDecoration(
        filled: true,
        prefixIcon: const Icon(Icons.message_outlined),
        suffixIcon: IconButton(
          onPressed: () {
            //final textValue = textController.text;
            textController.clear();
          },
          icon: const Icon(Icons.send_outlined),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: 'Type a message',
      ),
      onFieldSubmitted: (value) {
        textController.clear();
        focusNode.requestFocus();
      },
      focusNode: focusNode,
      onTapOutside: (event) {
        focusNode.unfocus();
      },
    );
  }
}
