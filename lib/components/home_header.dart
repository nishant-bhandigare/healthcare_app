import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key, required this.userName});

  final String userName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: BoxDecoration(
        // border: Border.all(),
        // color: Colors.cyan,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(),
              // color: Colors.cyan,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Hey there!", style: TextStyle(fontSize: 15)),
              Text(userName, style: const TextStyle(fontSize: 20),),
            ],
          ),
          const Spacer(),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(),
              // color: Colors.cyan,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
