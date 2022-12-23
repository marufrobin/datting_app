import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerifyOtpPage extends StatelessWidget {
  const VerifyOtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneNumberController = TextEditingController();
    final _formKey = GlobalKey<FormState>();
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
            // TextFormField(
            //   keyboardType: TextInputType.number,
            //   controller: phoneNumberController,
            //   validator: (value) {},
            //   decoration: InputDecoration(
            //       hintStyle: TextStyle(fontFamily: "Roboto"),
            //       hintText: "OTP PIN",
            //       border: OutlineInputBorder(
            //           borderRadius: BorderRadius.all(Radius.circular(8)))),
            // ),
            Form(
                key: _formKey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildOTPTextBox(context),
                    buildOTPTextBox(context),
                    buildOTPTextBox(context),
                    buildOTPTextBox(context),
                    buildOTPTextBox(context),
                    buildOTPTextBox(context),
                  ],
                )),
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

  SizedBox buildOTPTextBox(BuildContext context) {
    return SizedBox(
      height: 56,
      width: 54,
      child: TextFormField(
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        validator: (value) {},
        style: TextStyle(fontFamily: "Roboto", fontSize: 20),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        decoration: InputDecoration(
            hintText: "0",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
      ),
    );
  }
}
