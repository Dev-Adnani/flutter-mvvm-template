import 'package:flutter/material.dart';
import 'package:mvvm/models/userModel/user.model.dart';
import '../../shared/my.text.view.dart';
import '../../../res/app.context.extension.dart';

class UserDetailsScreen extends StatelessWidget {
  static const String id = "user_details";

  final User? user;

  // Receive data from the HomeScreen as a parameter
  const UserDetailsScreen(this.user, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test')),
      body: Container(
        color: context.resources.color.catChipColor,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(context.resources.dimension.smallMargin),
            child: Column(
              children: [
                // Center(
                // child: Image.network(
                //   user?.image_path ?? "",
                //   errorBuilder: (context, error, stackTrace) {
                //     return Image.asset('assets/images/error.png');
                //   },
                //   fit: BoxFit.fill,
                //   height: context.resources.dimension.imageHeight,
                // ),
                // ),
                Card(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: context.resources.dimension.defaultMargin),
                        child: Row(
                          children: [MyTextView(label: user?.id ?? "")],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: context.resources.dimension.defaultMargin),
                        child: Row(
                          children: [MyTextView(label: user?.name ?? "")],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: context.resources.dimension.defaultMargin),
                        child: Row(
                          children: [MyTextView(label: user?.note ?? "")],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: context.resources.dimension.defaultMargin),
                        child: Row(
                          children: [MyTextView(label: user?.phone ?? "")],
                        ),
                      ),
                    ],
                  ),
                  elevation: context.resources.dimension.highElevation,
                  margin:
                      EdgeInsets.all(context.resources.dimension.smallMargin),
                  color: context.resources.color.catChipColor,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
