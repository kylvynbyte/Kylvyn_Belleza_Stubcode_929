import 'package:flutter/material.dart';
import 'package:widgets/components/globalappbar_component.dart';
import 'package:widgets/components/newsfeedcomponent.dart';

class NewsfeedScreen extends StatefulWidget {
  const NewsfeedScreen({super.key});

  @override
  State<NewsfeedScreen> createState() => _NewsfeedScreenState();
}

class _NewsfeedScreenState extends State<NewsfeedScreen> {

  final List<Map<String, String>> newsfeed = [
    {
      "username": "John Doe",
      "status": "Having a great day!",
      "likes": "120",
      "comments": "25",
      "shares": "10",
      "time": "2 hours ago",
    },
  {
      "username": "Jane Smith",
      "status": "Learning Flutter is fun!",
      "likes": "250",
      "comments": "40",
      "shares": "15",
      "time": "3 hours ago",
    },
  {
      "username": "Unknows User",
      "status": "Working on my new project.",
      "likes": "89",
      "comments": "12",
      "shares": "4",
      "time": "5 hours ago",
    },
  {
      "username": "Chriselle Fernandez",
      "status": "It's my Birthday!!",
      "likes": "300",
      "comments": "50",
      "shares": "20",
      "time": "6 hours ago",
    },
  {
      "username": "Matthew Esposo",
      "status": "Enjoying my weekend!",
      "likes": "175",
      "comments": "32",
      "shares": "8",
      "time": "8 hours ago",
    },
  {
      "username": "Lei Marterior",
      "status": "Finished my coding activity!",
      "likes": "210",
      "comments": "28",
      "shares": "12",
      "time": "10 hours ago",
    },
  {
      "username": "Kylvyn Belleza",
      "status": "With the gang",
      "likes": "95",
      "comments": "18",
      "shares": "6",
      "time": "12 hours ago",
    },
  {
      "username": "Daniel Padilla",
      "status": "Another productive day!",
      "likes": "340",
      "comments": "65",
      "shares": "25",
      "time": "1 day ago",
},
];

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: GlobalappbarComponent(),

    body: ListView.builder(
      padding: const EdgeInsets.all(10),
    
      itemCount: newsfeed.length,

      itemBuilder: (context, index) {
        final post = newsfeed[index];

        return Newsfeedcomponent(
          username: post["username"],
          timeposted: post["time"],
          status: post["status"],
          numberoflikes: post["likes"],
          numberofcomments: post["comments"],
          numberofshares: post["shares"],
          
          
        );
      },
    ),
  );
 } 
}

