import 'package:blurrycontainer/blurrycontainer.dart';
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
        backgroundColor: Colors.white,
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
      body: Container(
        child: GridView.builder(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: modelData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                buildProfileBottomSheet(context, index);
              },
              child: Container(
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 4,
                          blurRadius: 8,
                          offset: Offset(0, 3))
                    ],
                    image: DecorationImage(
                        image: AssetImage(
                          "${modelData[index].img}",
                        ),
                        fit: BoxFit.cover)
                    // color: Colors.cyanAccent,
                    ),
              ),
            );
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisExtent: 260),
        ),
      ),
    );
  }

  Future<dynamic> buildProfileBottomSheet(BuildContext context, int index) {
    return showModalBottomSheet(
      barrierColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Container(
          margin: EdgeInsets.all(16),
          child: BlurryContainer(
            blur: 10, color: Colors.white.withOpacity(0.5),
            height: 430,
            // elevation: 6,
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: 280,
                  // margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(modelData[index].img),
                          fit: BoxFit.cover)),
                ),
                Expanded(
                    child: Column(
                  children: [
                    Text("data"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            splashColor: Colors.grey,
                            icon: Icon(
                              Icons.close,
                              size: 30,
                            )),
                        MaterialButton(
                            onPressed: () {},
                            child: Image.asset("images/love.png")),
                        IconButton(
                            onPressed: () {},
                            splashColor: Colors.grey,
                            icon: Icon(
                              Icons.remove_red_eye_outlined,
                              size: 30,
                            )),
                      ],
                    ),
                  ],
                ))
              ],
            ),
          ),
        );
      },
    );
  }
}
