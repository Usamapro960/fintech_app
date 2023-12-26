import 'package:fintech/core/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../gen/assets.gen.dart';

class GoldPlan extends StatelessWidget {
  const GoldPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "My Asset",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Your total asset portfolio",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    const Text(
                      "N203,935",
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    const Gap(30),
                    SvgPicture.asset(Assets.icons.upvote, height: 20),
                    const Text(
                      "+2%",
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.green),
                    ),
                  ],
                ),
                const Gap(42),
                const Text(
                  "Current Plans",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Gap(20),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage(Assets.images.portfolio1.path),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "See All Plans",
                      style: TextStyle(color: Colors.red, fontSize: 18.0),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                const Text(
                  "History",
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700),
                ),
                customTile(
                  title: "Rp 200.000",
                  subtitle: "Buy “APPL” Stock",
                  date: "TUE 22 Jun 2020",
                ),
                customTile(title: "Rp 150.000", subtitle: "Sell “TLKM” Stock", date: "TUE 22 Jun 2020", color: AppColors.kPrimaryColor),
                customTile(title: "Rp 1.000.240", subtitle: "Buy “FB” Stock", date: "TUE 22 Jun 2020"),
                customTile(title: "Rp 1.000.240", subtitle: "Buy “APPL” Stock", date: "TUE 22 Jun 2020", color: AppColors.kPrimaryColor),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget customTile({required String title, required String subtitle, required String date, Color? color}) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            title,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700, color: color ?? Colors.black),
          ),
          subtitle: Text(
            subtitle,
            style: const TextStyle(
              fontSize: 14.0,
            ),
          ),
          trailing: Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Text(
              date,
              style: const TextStyle(fontSize: 14.0),
            ),
          ),
        ),
        const Divider(),
      ],
    );
  }
}
