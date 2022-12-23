import 'package:flutter/material.dart';

class VerifyOtpPage extends StatelessWidget {
  const VerifyOtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneNumberController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.black)),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Verify OTP",
          style: TextStyle(color: Colors.black, fontFamily: "Roboto"),
        ),
      ),
      // backgroundColor: Color(0xff03a9f4),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              keyboardType: TextInputType.number,
              controller: phoneNumberController,
              validator: (value) {},
              decoration: InputDecoration(
                  hintStyle: TextStyle(fontFamily: "Roboto"),
                  hintText: "OTP PIN",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)))),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 24,
              ),
              width: 78,
              height: 40,
              child: MaterialButton(
                onPressed: () {},
                color: Color(0xff6750A4),
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                child: Text(
                  "Verify",
                  style: TextStyle(
                      color: Colors.white, fontSize: 16, fontFamily: "Roboto"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
