import 'package:firebase_project/view/auth/otp_varify_view.dart';
import 'package:firebase_project/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhoneLoginView extends StatefulWidget {
  const PhoneLoginView({super.key});

  @override
  State<PhoneLoginView> createState() => _PhoneLoginViewState();
}

class _PhoneLoginViewState extends State<PhoneLoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Phone Authentication")),
      body: Column(
        children: [
          SizedBox(height: 30.h),
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(hintText: "+1 234 567 789"),
          ),
          SizedBox(height: 20.h),
          RoundedButton(
            title: "Login",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => OtpVarifyView()),
              );
            },
          ),
        ],
      ),
    );
  }
}
