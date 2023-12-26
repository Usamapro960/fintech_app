import 'package:flutter/material.dart';

import '../core/component/list_tile_widget.dart';
import '../core/utilities/colors.dart';
import '../gen/assets.gen.dart';
import 'gold_plan.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List imagesPath = [
    "assets/images/Card_1.png",
    "assets/images/Card_2.png",
    "assets/images/Card_3.png",
    "assets/images/Card_1.png",
    "assets/images/Card_2.png",
    "assets/images/Card_3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    Icon(Icons.notification_important_outlined),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Welcome, Jessie.",
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 30, top: 30, right: 20),
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xff31A05F),
                        Color(0xff31A078),
                      ],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Your total asset portfolio",
                        style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "N203,935",
                            style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                          Container(
                            height: 40,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Invest Now",
                                style: TextStyle(color: AppColors.kPrimaryColor, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best Plans",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                    Row(
                      children: [
                        Text(
                          "See all",
                          style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: imagesPath.length,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const GoldPlan()));
                            },
                            child: Container(
                              width: 130,
                              decoration: BoxDecoration(
                                color: AppColors.kPrimaryColor,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(imagesPath[index]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Investment Guide",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
                CustomListTile(
                  title: "Basic type of investments",
                  subtitle: "This is how you set your foot for 2020 Stock market recession. What’s next...",
                  image: Assets.images.circle1.path,
                ),
                CustomListTile(
                  title: "How much can you start wit..",
                  subtitle: "What do you like to see? It’s a very different market from 2018. The way...",
                  image: Assets.images.circle2.path,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
