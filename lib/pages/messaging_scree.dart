import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/user_info.dart';

class MessagingScreen extends StatelessWidget {
  final int index;

  const MessagingScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(31, 44, 52, 1),
        title: Text(userInfo[index]['name'].toString()),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call))
        ],
      ),
      body: Column(
        children: [
          const Expanded(child: Placeholder()),
          TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(20),
              fillColor: const Color.fromRGBO(29, 34, 40, 1),
              filled: true,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  Icons.emoji_emotions_rounded,
                  color: Colors.grey.shade500,
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.attach_file_rounded,
                      color: Colors.grey.shade500,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.camera_alt,
                      color: Colors.grey.shade500,
                    ),
                  ],
                ),
              ),
              hintText: 'Write Message',
              hintStyle: const TextStyle(
                color: Colors.white
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none
                )
              )
            ),
          )
        ],
      ),
    );
  }
}
