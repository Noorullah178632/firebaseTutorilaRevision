import 'package:firebase_project/utils/utils_methods.dart';
import 'package:firebase_project/viewModel/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostView extends StatefulWidget {
  const PostView({super.key});

  @override
  State<PostView> createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final success = await Utils().showConfirmDialog(
            context,
            "Do you really want to sign out?",
          );
          if (!context.mounted) return;
          if (success) {
            await context.read<AuthViewModel>().signOut();
          }
        },
        child: Icon(Icons.logout),
      ),
      appBar: AppBar(title: Text("Post")),
      body: Center(child: Text("post screen")),
    );
  }
}
