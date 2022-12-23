import 'package:datting_app/model/model_data.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  FeedPage({Key? key}) : super(key: key);
  var modelData = ModelData.modelData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Explore",
          style: TextStyle(
            color: Color(0xff49454F),
            fontSize: 18,
            fontFamily: "OpenSans",
          ),
        ),
        actions: [
          //Notification button
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_outlined,
                color: Colors.black,
              )),

          //Profile button
          CircleAvatar(
            backgroundColor: Colors.black45,
            radius: 20,
            backgroundImage: AssetImage('${modelData[0].img}'),
            // child: Image.asset(),
          ),
          SizedBox(
            width: 16,
          )
        ],
      ),
    );
  }
}
