import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:softphone/new/screens/messages/chat%20screen/chat_tile.dart';
import 'package:softphone/new/theme/theme_data.dart';

import 'message_data.dart';

class MessagesTile extends StatelessWidget {
  const MessagesTile({super.key});

  @override
  Widget build(BuildContext context) {

    //ref add message overlay button
    return  Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        shape: const CircleBorder(),
          backgroundColor: Colors.black,
          splashColor: CustomTheme.secondary,
          onPressed: (){},
          label: Icon(Icons.add_comment_sharp, color: CustomTheme.secondary,),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,),
      body: CustomScrollView(
          slivers: [
            //Scrollable Header


            // SliverAppBar(
            //   pinned: true,
            //   expandedHeight: 120,
            //   flexibleSpace: FlexibleSpaceBar(
            //     title: Text('DOES IT WOrk'),
            //   ),
            // ),



            SliverList(
          delegate: SliverChildBuilderDelegate(_delegate)
            ),
          ]
      ),
    );
    }

    Widget _delegate(BuildContext context, int index){
      return _MessageTitle(
          messageData: MessageData(
            senderName: ('Name'),
            message: ('Message Message Message Message Message Message Message Message Message Message Message Message Message MessageMessageMessage'),
            messageDate: (DateTime.now()),
            dateMessage: ('time'),
          ));
  }
}

// ref to each message container
class _MessageTitle extends StatelessWidget {
  const _MessageTitle({
    required this.messageData,
  });

  final MessageData messageData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(ChatTile(messageData: messageData));

      },
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          color: CustomTheme.primary,
          border: Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 0.2,
            )
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: [
              Expanded(child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(messageData.senderName,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      letterSpacing: 0.2,
                      wordSpacing: 1.5,
                      fontWeight: FontWeight.w900
                    ),),
                  ),
                  const SizedBox(height: 7,),
                  Text(messageData.message,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                    letterSpacing: 0.2,
                    wordSpacing: 1.5,
                  ),),

                ],
              )),
              Padding(
                  padding: const EdgeInsets.only(right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(height: 4,),
                  Text(
                    messageData.dateMessage.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 11,
                      letterSpacing: -0.2,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Container(
                    width: 18,
                      height: 18,
                    decoration: BoxDecoration(
                      color: CustomTheme.secondary,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                  )
                ],
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
