import 'package:firebase_project/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpVarifyView extends StatefulWidget {
  const OtpVarifyView({super.key});

  @override
  State<OtpVarifyView> createState() => _OtpVarifyViewState();
}

class _OtpVarifyViewState extends State<OtpVarifyView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("OTP Varification")),
      body: Column(
        children: [
          SizedBox(height: 30.h),
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(hintText: "Varify OTP"),
          ),
          SizedBox(height: 20.h),
          RoundedButton(title: "Varify", onPressed: () {}),
        ],
      ),
    );
  }
}
