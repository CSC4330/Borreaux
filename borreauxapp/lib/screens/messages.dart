import 'package:borreauxapp/assets/colors.dart';
import 'package:borreauxapp/model/messagesUser.dart';
import 'package:borreauxapp/widgets/conversationList.dart';
import 'package:flutter/material.dart';

// class MessagesWidget extends StatelessWidget {
//   final Color color;

//   MessagesWidget(this.color);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: color,
//     );
//   }
// }
class MessagesPage extends StatefulWidget {
  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  List<MessagesUsers> messagesUsers = [
    MessagesUsers(
        name: "Ja'Marr Chase",
        messageText: "leave me alone",
        imageURL:
            "https://profootballdraft.com/wp-content/uploads/2020/05/chaseheadshot.png",
        time: "Yesterday"),
    MessagesUsers(
        name: "Justin Jefferson",
        messageText: "natty",
        imageURL:
            "https://a.espncdn.com/combiner/i?img=/i/headshots/nfl/players/full/4262921.png&w=350&h=254",
        time: "Yesterday"),
    MessagesUsers(
        name: "Jorge Henry",
        messageText: "tomorrow?",
        imageURL: "<https://randomuser.me/api/portraits/men/5.jpg>",
        time: "31 Mar"),
    MessagesUsers(
        name: "Philip Fox",
        messageText: "i don't have it anymore",
        imageURL: "<https://randomuser.me/api/portraits/men/5.jpg>",
        time: "28 Mar"),
    MessagesUsers(
        name: "Debra Hawkins",
        messageText: "yeah it's pretty much new",
        imageURL: "<https://randomuser.me/api/portraits/men/5.jpg>",
        time: "23 Mar"),
    MessagesUsers(
        name: "Jacob Pena",
        messageText: "i think i can come in 10 mins",
        imageURL: "<https://randomuser.me/api/portraits/men/5.jpg>",
        time: "17 Mar"),
    MessagesUsers(
        name: "Andrey Jones",
        messageText: "Where do you want to meet?",
        imageURL: "<https://randomuser.me/api/portraits/men/5.jpg>",
        time: "24 Feb"),
    MessagesUsers(
        name: "John Wick",
        messageText: "Do you still have this book for rent?",
        imageURL: "<https://randomuser.me/api/portraits/men/5.jpg>",
        time: "18 Feb"),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),

                // TOP OF SCREEN HEADER
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // ignore: prefer_const_constructors
                    Text(
                      "Conversations",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColor.secondaryColor,
                      ),
                      child: Row(
                        // "+"" icon
                        children: <Widget>[
                          Icon(
                            Icons.add,
                            color: AppColor.primaryColor,
                            size: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            // SEARCH BAR
            Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(
                    Icons.search,
                    color: AppColor.secondaryColor,
                    size: 20,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: AppColor.secondaryColor)),
                ),
              ),
            ),
            // CONVERSATION LIST
            ListView.builder(
              itemCount: messagesUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ConversationList(
                  name: messagesUsers[index].name,
                  messageText: messagesUsers[index].messageText,
                  imageUrl: messagesUsers[index].imageURL,
                  time: messagesUsers[index].time,
                  isMessageRead: (index == 1 || index == 4) ? true : false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
