import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:datting_app/model/model_data.dart';
import 'package:flutter/material.dart';

import '../config/consts.dart';
import '../widgets/FeedPhotoCard.dart';

class FeedPage extends StatelessWidget {
  FeedPage({Key? key}) : super(key: key);

  var feedItems = FeedItem.modelData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Explore",
          style: TextStyle(
            color: kColorDark,
            fontSize: 22,
            fontFamily: "OpenSans",
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          //Notification button
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_outlined,
              color: Colors.black,
              size: 35,
            ),
          ),
          //Profile button
          CircleAvatar(
            backgroundColor: Colors.black45,
            radius: 20,
            backgroundImage: AssetImage(feedItems[0].img),
            // child: Image.asset(),
          ),
          const SizedBox(width: 16)
        ],
      ),
      body: GridView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.all(8),
        scrollDirection: Axis.vertical,
        itemCount: feedItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              buildProfileBottomSheet(context, index);
            },
            child: FeedPhotoCard(feedItem: feedItems[index]),
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 260,
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
          margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: BlurryContainer(
            blur: 10, color: Colors.white.withOpacity(0.5),
            height: 460,
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
                          image: AssetImage(feedItems[index].img),
                          fit: BoxFit.cover)),
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "${feedItems[index].name}, ${feedItems[index].age}",
                          style: TextStyle(
                            color: Color(0xff21005D),
                            fontSize: 16,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Image.asset(
                          "images/doneIcon.png",
                          fit: BoxFit.fill,
                        )
                      ],
                    ),
                    Text(
                      "${feedItems[index].address}",
                      style: TextStyle(
                        color: Color(0xff21005D),
                        fontSize: 16,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
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
