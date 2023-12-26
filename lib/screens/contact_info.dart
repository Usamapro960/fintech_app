import 'package:fintech/core/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../gen/assets.gen.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppBar(
                  backgroundColor: Colors.white,
                  leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                  title: const Text(
                    "Contact Info",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                  ),
                  centerTitle: true,
                ),
                const Gap(35),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage(Assets.images.profile.path),
                    ),
                    Positioned(
                      top: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.black.withOpacity(0.3),
                        radius: 80,
                        child: const Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(16),
                customContactTile(
                  labelText: "Name",
                ),
                const Gap(20),
                customContactTile(
                  labelText: "Birthdate",
                ),
                const Gap(20),
                customContactTile(
                  labelText: "Gender",
                ),
                const Gap(20),
                customContactTile(
                  labelText: "Email",
                ),
                const Gap(20),
                customContactTile(
                  labelText: "Address",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customContactTile({required String labelText}) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          height: 50,
          color: Colors.white,
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(top: 5),
              label: Text(
                labelText,
                style: const TextStyle(
                  fontSize: 14,
                  color: AppColors.kLightGreyColor,
                ),
              ),
              suffixIcon: const Padding(
                padding: EdgeInsets.all(14.0),
                child: Text(
                  "Change",
                  style: TextStyle(color: AppColors.kPrimaryColor, fontSize: 10, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
