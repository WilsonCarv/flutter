import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onValue;
  const MessageFieldBox({super.key, required this.onValue});

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
            final textValue = textController.text;
            onValue(textValue);
            textController.clear();
          },
          icon: const Icon(Icons.send_outlined),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: 'Type a question?',
      ),
      onFieldSubmitted: (value) {
        onValue(value);
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
