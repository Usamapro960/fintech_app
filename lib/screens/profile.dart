import 'package:fintech/core/component/build_extension.dart';
import 'package:fintech/screens/contact_info.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../gen/assets.gen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F9),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text(
                    "Profile",
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
                  ),
                ),
                const Gap(20),
                Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage(Assets.images.profile.path),
                      ),
                      const Gap(10),
                      const Text(
                        "Jonas Macroni",
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                      const Gap(6),
                      const Text(
                        "Expert",
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const Gap(20),
                GestureDetector(
                  onTap: () {
                    context.push(
                      const ContactInfo(),
                    );
                  },
                  child: customTile(titleIcon: Icons.contact_mail_outlined, title: "Contact Info"),
                ),
                const Gap(20),
                customTile(titleIcon: Icons.source_outlined, title: "Source of Funding Info"),
                const Gap(20),
                customTile(titleIcon: Icons.food_bank_rounded, title: "Bank Account Info"),
                const Gap(20),
                customTile(titleIcon: Icons.edit_document, title: "Document Info"),
                const Gap(20),
                customTile(titleIcon: Icons.settings, title: "Settings"),
                const Gap(20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customTile({required IconData titleIcon, required String title}) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5), boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          offset: const Offset(1, 1),
        ),
      ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  titleIcon,
                  color: Colors.black,
                ),
                const Gap(40),
                Text(
                  title,
                  style: const TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
