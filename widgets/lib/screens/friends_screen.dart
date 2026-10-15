import 'package:flutter/material.dart';
import 'package:widgets/components/globalappbar_component.dart';

class FriendsScreen extends StatefulWidget {
  const FriendsScreen({super.key});

  @override
  State<FriendsScreen> createState() => _FriendsScreenState();
}

class _FriendsScreenState extends State<FriendsScreen> {
  final List<Map<String, String>> friends = [
    {
      "name": "Alice Johnson",
      "avatarUrl": "https://randomuser.me/api/portraits/women/1.jpg",
      "status": "Online"
    },
    {
      "name": "Bob Smith",
      "avatarUrl": "https://randomuser.me/api/portraits/men/2.jpg",
      "status": "Offline"
    },
    {
      "name": "Charlie Davis",
      "avatarUrl": "https://randomuser.me/api/portraits/men/3.jpg",
      "status": "Busy"
    },
    {
      "name": "Diana Prince",
      "avatarUrl": "https://randomuser.me/api/portraits/women/4.jpg",
      "status": "Online"
    },
    {
      "name": "Ethan Hunt",
      "avatarUrl": "https://randomuser.me/api/portraits/men/5.jpg",
      "status": "Away"
    },
    {
      "name": "Lea Belleza",
      "avatarUrl": "https://randomuser.me/api/portraits/men/5.jpg",
      "status": "Online"
    },
    {
      "name": "Leo Belleza",
      "avatarUrl": "https://randomuser.me/api/portraits/men/5.jpg",
      "status": "Online"
    },
  

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalappbarComponent(),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: friends.length,
        itemBuilder: (context, index) {
          final friend = friends[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(friend["avatarUrl"]!),
                radius: 25,
              ),
              title: Text(
                friend["name"]!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(friend["status"]!),
              trailing: IconButton(
                icon: const Icon(Icons.message, color: Colors.blue),
                onPressed: () { 
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Message to ${friend["name"]}')),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
