import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/messaging_scree.dart';
import 'package:whatsapp_clone/utils/user_info.dart';

class UsersList extends StatelessWidget {
  const UsersList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: ListView.builder(
        itemCount: userInfo.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (_) => MessagingScreen(
                          index: index,
                        ),
                    )
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: ListTile(
                    title: Text(
                      userInfo[index]['name'].toString()
                    ),
                    subtitle: Text(
                      userInfo[index]['message'].toString(),
                    ),
                    leading: CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(
                        userInfo[index]['profilePic'].toString()
                      ),
                    ),
                    trailing: Text(
                      userInfo[index]['time'].toString()
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Divider(
                  color: Colors.grey.shade800,
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
