import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

class EventChatPage extends StatefulWidget {
  const EventChatPage({Key? key}) : super(key: key);

  @override
  _EventChatPageState createState() => _EventChatPageState();
}

class _EventChatPageState extends State<EventChatPage> {

  TextEditingController message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Goald Event"),
      centerTitle: false,),
      body: body(),
     // bottomNavigationBar: sendMessageBottomBar(),
    );
  }

  Widget body(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(child: lok()),
        sendMessageBottomBar()
      ],
    );
  }

  Widget lok(){

    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return ChatBubble(
          clipper: ChatBubbleClipper6(type: BubbleType.sendBubble),
          alignment: Alignment.topRight,
          margin: EdgeInsets.only(top: 10,bottom: 10),
          elevation: 0,
          backGroundColor: Theme.of(context).colorScheme.primaryContainer,
          child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.7,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod "
                    ,
                  style: Theme.of(context).textTheme.bodyMedium,



                ),

                Text(
                  "isuru122",
                  style: Theme.of(context).textTheme.bodySmall!.
                  copyWith(fontStyle: FontStyle.italic,color: Theme.of(context).disabledColor),



                ),


              ],
            ),
          ),
        );
      },

    );
  }

  Widget sendMessageBottomBar(){
    return Container(
      color: Theme.of(context).colorScheme.secondaryContainer,

      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: 300.0,
        ),
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.baseline,
          // mainAxisSize: MainAxisSize.min,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: messageTypeTextField()),
            sendMessageButton()

          ],
        ),
      ),
    );

  }



  /// Text field for the chat feature in the events.
  /// there are some conditions in this text fields
  /// limited characters [limited to 200]
  /// limited lines
  /// Once user click send button, send button will be disabled for 4 seconds to avoid spam messages.
  Widget messageTypeTextField(){
    return  Container(
      // color: Theme.of(context).colorScheme.secondaryContainer,
      child:  Padding(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 6),
        child: TextField(
          controller: message,
          maxLength: 200,

          maxLines: null,
          keyboardType: TextInputType.multiline,

          inputFormatters: [
            FilteringTextInputFormatter.deny(new RegExp(r"\n"))
          ],

          decoration: InputDecoration(
            isDense: true,
            //border: InputBorder.none,
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(10.0),
              ),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.solid,
              ),
            ),
            counterText: "",
            hintText: 'Type message...',
          ),
        ),
      ),
    );
  }

  Widget sendMessageButton(){

    return IconButton.filled(onPressed: (){


      setState(() {
        message.clear();
      });

    }, icon: const Icon(Icons.send_rounded)
    );  }
}

