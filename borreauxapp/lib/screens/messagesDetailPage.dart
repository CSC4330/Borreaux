import 'package:borreauxapp/assets/colors.dart';
import 'package:borreauxapp/model/chatMessageModel.dart';
import 'package:flutter/material.dart';

class MessagesDetailPage extends StatefulWidget {
  @override
  _MessagesDetailPageState createState() => _MessagesDetailPageState();
}

class _MessagesDetailPageState extends State<MessagesDetailPage> {
  @override

  // test messages for now
  // RECEIVER is the person you are texting
  // SENDER is you
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "hey joe", messageType: "receiver"),
    ChatMessage(
        messageContent: "do u still have that football 1001 book",
        messageType: "receiver"),
    ChatMessage(
        messageContent: "no i think coach o took it from me",
        messageType: "sender"),
    ChatMessage(
        messageContent: "but you promised me i could have it",
        messageType: "receiver"),
    ChatMessage(messageContent: "leave me alone", messageType: "sender"),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading:
            false, // gives leading space if false and leading is null
        backgroundColor: AppColor.primaryColor,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 2,
                ),
              ],
            ),
            // top of chat details with user's name, status,
            // profile picture, and the back button & gear
            child: Row(
              children: <Widget>[
                IconButton(
                  // goes back to the messagesPage
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("lib/assets/images/chase.png"),
                  maxRadius: 20,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Ja'Marr Chase",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Online",
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 13),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.settings,
                  color: AppColor.secondaryColor,
                ),
              ],
            ),
          ),
        ),
      ),
      // MESSAGES IN BUBBLES BETWEEN SENDER AND RECEIVER
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              // accessing the List of chat messages above
              return Container(
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
                child: Align(
                  // IF receiver, then message shows to the left
                  // ELSE, the message shows to the right (you are sender)
                  alignment: (messages[index].messageType == "receiver"
                      ? Alignment.topLeft
                      : Alignment.topRight),
                  child: Container(
                    // creating the text bubble
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: (messages[index].messageType == "receiver"
                          ? Colors.grey.shade300
                          : AppColor.secondaryColor),
                    ),
                    padding: EdgeInsets.all(16),
                    // putting the message in the text bubble
                    child: Text(
                      messages[index].messageContent,
                      style: TextStyle(
                        fontSize: 15,
                        color: (messages[index].messageType == "receiver"
                            ? Colors.black
                            : AppColor.primaryColor),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),

          // MESSAGING TEXT BOX
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 2,
                  ),
                ],
              ),
              padding:
                  EdgeInsets.only(left: 20, bottom: 50, top: 10, right: 10),
              height: 100,
              width: double.infinity,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: AppColor.secondaryColor,
                        borderRadius: BorderRadius.circular(30),
                      ),

                      // ADD ICON FOR IMAGES AND ETC.
                      child: Icon(
                        Icons.add,
                        color: AppColor.primaryColor,
                        size: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Write message...",
                          hintStyle: TextStyle(color: Colors.black54)),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  // SEND MESSAGE BUTTON
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.send,
                      color: AppColor.primaryColor,
                      size: 18,
                    ),
                    backgroundColor: AppColor.secondaryColor,
                    elevation: 0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
