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
        imagePath: "lib/assets/images/chase.png",
        time: "Yesterday"),
    MessagesUsers(
        name: "Justin Jefferson",
        messageText: "natty",
        imagePath: "lib/assets/images/chase.png",
        time: "Yesterday"),
    MessagesUsers(
        name: "Jorge Henry",
        messageText: "tomorrow?",
        imagePath: "lib/assets/images/chase.png",
        time: "31 Mar"),
    MessagesUsers(
        name: "Philip Fox",
        messageText: "i don't have it anymore",
        imagePath: "lib/assets/images/chase.png",
        time: "28 Mar"),
    MessagesUsers(
        name: "Debra Hawkins",
        messageText: "yeah it's pretty much new",
        imagePath: "lib/assets/images/chase.png",
        time: "23 Mar"),
    MessagesUsers(
        name: "Jacob Pena",
        messageText: "i think i can come in 10 mins",
        imagePath: "lib/assets/images/chase.png",
        time: "17 Mar"),
    MessagesUsers(
        name: "Andrey Jones",
        messageText: "Where do you want to meet?",
        imagePath: "lib/assets/images/chase.png",
        time: "24 Feb"),
    MessagesUsers(
        name: "John Wick",
        messageText: "Do you still have this book for rent?",
        imagePath: "lib/assets/images/chase.png",
        time: "18 Feb"),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(backgroundColor: AppColor.secondaryColor, title: Text("Seller Profile"),),
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
                  imagePath: messagesUsers[index].imagePath,
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
