import 'package:flutter/material.dart';
import 'package:smart_agent/theme/color.dart';

class MessageScreen extends StatelessWidget {
  MessageScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarComponent(context),
      body: body(context),
    );
  }

  PreferredSize appBarComponent(context) {
    final theme = Theme.of(context);
    final dark = theme.brightness == Brightness.dark;
    return PreferredSize(
      preferredSize: Size.square(kToolbarHeight),
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          color: theme.cardColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: primary.withOpacity(.24),
              offset: Offset(0, 4),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 90,
              width: 90,
              padding: EdgeInsets.only(top: 15, right: 17),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 22,
                  color: primary,
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Text(
                  'group one',
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: primary),
                ),
              ),
            ),
            Container(
              width: 90,
              height: 90,
              padding: EdgeInsets.only(top: 15),
              child: Icon(Icons.more_horiz),
            ),
          ],
        ),
      ),
    );
  }

  Widget body(context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
      color: Theme.of(context).canvasColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          messageQueryComponent(context),
          createMessageInputComponent(context)
        ],
      ),
    );
  }

  Widget messageQueryComponent(context) {
    return messageListComponent(context);
  }

  Widget messageListComponent(context) {
    return Expanded(
      flex: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          messageItemComponentL(context),
          messageItemComponentR(context),
          messageItemComponentL(context),
          messageItemComponentR(context),
        ],
      ),
    );
  }

  Widget messageItemComponentR(context) {
    // final group = chatDetails.members.length > 2;
    double marginL = 25;
    double marginR = 15;
    final mWidth = MediaQuery.of(context).size.width;
    final width = null;

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.fromLTRB(marginL, 10, marginR, 10),
          decoration: BoxDecoration(
            color: primary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ...[
                  Text(
                    "Godson",
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(margin: EdgeInsets.only(top: 5))
                ],
                Text(
                  'hello',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget messageItemComponentL(context) {
    final group = true;
    double marginL = 15;
    double marginR = 25;
    final mWidth = MediaQuery.of(context).size.width;
    // final width = mWidth / 1.3;
    final width = null;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.fromLTRB(marginL, 10, marginR, 10),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ...[
                  Text(
                    "David",
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                  Container(margin: EdgeInsets.only(top: 5))
                ],
                Text(
                  'hello',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget createMessageInputComponent(context) {
    final messageController = TextEditingController();
    return Container(
      padding: EdgeInsets.fromLTRB(15, 1, 5, 1),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: TextField(
              controller: messageController,
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Tap to send a message",
                hintStyle: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 18,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          createMessageMutationComponent(context)
        ],
      ),
    );
  }

  Widget createMessageMutationComponent(context) {
    return sendButton();
  }

  Widget sendButton() {
    return
        // Container(
        //     width: 25,
        //     height: 25,
        //     margin: EdgeInsets.only(right: 15),
        //     child: CircularProgressIndicator(
        //       backgroundColor: PURPLE_COLOR,
        //     ))
        IconButton(
      color: primary,
      icon: Icon(Icons.send),
      onPressed: () {
        // messageController.clear();
      },
    );
  }
}
