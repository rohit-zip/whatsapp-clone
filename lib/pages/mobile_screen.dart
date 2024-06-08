import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/users_list.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(31,44,52,1),
            elevation: 1,
            centerTitle: false,
            title: titleText(),
            actions: [
              IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey.shade500,
                  )
              ),
              IconButton(
                  onPressed: (){},
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.grey.shade500,
                  )
              )
            ],
            bottom: getTabBar(),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color.fromRGBO(0, 167, 131, 1),
            child: const Icon(
              Icons.maps_ugc,
            ),
          ),
          body: const UsersList(),
        )
    );
  }

  TabBar getTabBar() {
    return TabBar(
            indicatorWeight: 7,
            indicatorColor: const Color.fromRGBO(0, 167, 131, 1),
            labelColor: const Color.fromRGBO(0, 167, 131, 1),
            unselectedLabelColor: Colors.grey.shade500,
            labelStyle: const TextStyle(
              fontWeight: FontWeight.bold
            ),
            tabs: const [
              Tab(
                text: 'Messages',
              ),
              Tab(
                text: 'Status',
              ),
              Tab(
                text: 'Calls',
              )
            ],
          );
  }

  Text titleText() {
    return Text(
            'WhatsApp',
            style: TextStyle(
              fontSize: 25,
              color: Colors.grey.shade400,
              fontWeight: FontWeight.bold,
              letterSpacing: 1
            ),
          );
  }
}

