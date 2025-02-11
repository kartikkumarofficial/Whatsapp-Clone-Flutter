import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/message_model.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSender;

  ChatBubble({required this.text, required this.isSender});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.75),
            decoration: BoxDecoration(
              color: isSender ? Color(0xFF128C7E) : Color(0xFF252D32),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomLeft: isSender ? Radius.circular(15) : Radius.circular(0),
                bottomRight: isSender ? Radius.circular(0) : Radius.circular(15),
              ),
            ),
            child: Column(
              children: [
                Text(
                  // widget.message.text,
                  text,
                  style: TextStyle(color: Colors.white),
                ),

              ],
            ),
          ),


        ],
      ),
    );
  }
}



class MessageCard extends StatefulWidget {
   MessageCard({super.key, required this.message});
  final Message message;
  // final time = DateTime.timestamp().hour;

  @override
  State<MessageCard> createState() => _MessageCardState();
}

class _MessageCardState extends State<MessageCard> {
  @override
  Widget build(BuildContext context) {
    return widget.message.senderId== widget.message.receiverId ?
    _greenMessage()
        :_blueMessage();
  }

  Widget _blueMessage(){
    bool isSender =false;
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.75),
        decoration: BoxDecoration(
          color: isSender ? Color(0xFF128C7E) : Color(0xFF252D32),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: isSender ? Radius.circular(15) : Radius.circular(0),
            bottomRight: isSender ? Radius.circular(0) : Radius.circular(15),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              widget.message.text,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              DateFormat('h:mm a').format(widget.message.timestamp),
              style: TextStyle(color: Colors.white70),
              textAlign: TextAlign.end,

            ),
          ],
        ),
      ),
    );
  }

  Widget _greenMessage(){
    bool isSender =true;
    return Align(
        alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
    child: Container(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.75),
          decoration: BoxDecoration(
            color: isSender ? Color(0xFF128C7E) : Color(0xFF252D32),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: isSender ? Radius.circular(15) : Radius.circular(0),
              bottomRight: isSender ? Radius.circular(0) : Radius.circular(15),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                widget.message.text,
                style: TextStyle(color: Colors.white),
              ),
              Text(
                DateFormat('h:mm a').format(widget.message.timestamp),
                style: TextStyle(color: Colors.white70),
                textAlign: TextAlign.right,

              ),
            ],
          ),
        ),
      ),
    );
  }
}
