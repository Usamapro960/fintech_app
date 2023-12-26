import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../gen/assets.gen.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                backgroundColor: Colors.white,
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Notification",
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
                ),
              ),
              const Gap(10),
              notificationTile(img: Assets.images.appleStock.path, title: "Apple stocks just increased Check it out now.", dateTime: "15min ago"),
              const Gap(10),
              notificationTile(
                  img: Assets.images.profile1.path, title: "Check out today’s best investor. You’ll learn from him", dateTime: "15min ago"),
              const Gap(10),
              notificationTile(img: Assets.images.mountain.path, title: "Where do you see yourself in the next ages.", dateTime: "15min ago"),
            ],
          ),
        ),
      ),
    );
  }

  Widget notificationTile({required String img, required String title, required String dateTime}) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(img),
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          // subtitle: Text(subTitle),
          trailing: Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: Text(dateTime),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(),
        ),
      ],
    );
  }
}
