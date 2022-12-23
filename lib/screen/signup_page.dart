import 'package:datting_app/screen/verify_otp_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneNumberController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Access to your account",
          style: TextStyle(color: Colors.black, fontFamily: "Roboto"),
        ),
      ),
      // backgroundColor: Color(0xff03a9f4),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: phoneNumberController,
              validator: (value) {},
              decoration: InputDecoration(
                  hintStyle: TextStyle(fontFamily: "Roboto"),
                  prefixIcon: Icon(Icons.phone),
                  hintText: "Phone Number",
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
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VerifyOtpPage(),
                      ));
                },
                color: Color(0xff6750A4),
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                child: Text(
                  "Next",
                  style: TextStyle(
                      color: Colors.white, fontSize: 16, fontFamily: "Roboto"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
