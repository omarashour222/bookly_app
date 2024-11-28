import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35, bottom: 20),
      child: Row(
        children: [
          Image.asset(
            Assets.logo,
            height: 18,
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.search,
            ),
          )
        ],
      ),
    );
  }
}
