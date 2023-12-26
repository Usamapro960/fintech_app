import 'package:fintech/core/utilities/colors.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  const CustomListTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.all(0),
          title: Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          subtitle: Text(
            subtitle,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
          trailing: CircleAvatar(
            radius: 30,
            backgroundColor: AppColors.kPrimaryColor,
            backgroundImage: AssetImage(image),
          ),
        ),
        const Divider(),
      ],
    );
  }
}
