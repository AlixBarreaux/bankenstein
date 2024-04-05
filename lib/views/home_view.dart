import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

class HomeView extends StatelessWidget {
  static String name = "home";
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.deepPurple,
        child: Row(
          children: navbarIcons
              .map<Widget>(
                (svgAssetPath) => IconButton(
                  onPressed: () {
                    // To implement
                  },
                  icon: SvgPicture.asset("${svgAssetPath}"),
                ),
              )
              .toList(),
        ),
      ),
      appBar: AppBar(
        title: const Text(
          "Home",
        ),
        actions: [
          Row(
            children: [
              const Text("Undefined User"),
              IconButton(
                onPressed: () {
                  // To implement
                },
                icon: SvgPicture.asset("assets/svgs/user_icon.svg"),
              ),
            ],
          )
        ],
      ),
      body: const Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Welcome undefined user!",
            style: TextStyle(fontSize: 19.0),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
              "Use the navigation bar to go to your accounts or to transfer money."),
        ]),
      ));
}

const navbarIcons = [
  "assets/svgs/home_icon.svg",
  "assets/svgs/wallet_icon.svg",
  "assets/svgs/people_icon.svg",
  "assets/svgs/arrows_icon.svg",
  "assets/svgs/cogwheel_icon.svg",
];
/*
Could have more data with an anonymous function to put in the onpress when mapping:
{
  "svgAssetPath": "assets/svgs/user_icon.svg",
  "onPressedFunction": context.goNamed(HomeView.name);,
}
*/