import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Leaderboard extends StatelessWidget{
  const Leaderboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              // border: Border.all(),
              // color: Colors.cyan,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 80,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text("1425 XP"),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const TopThreeBanner(),
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: const Center(
              child: Text("Emerald League", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
            ),
          ),
          const LeagueMember(),
          const LeagueMember(),
          const LeagueMember(),
          const LeagueMember(),
          const LeagueMember(),
          const Text("Promotion Zone", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
          const LeagueMember(),
          const LeagueMember(),
          const LeagueMember(),
          const LeagueMember(),
          const LeagueMember(),
          const Text("Demotion Zone", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
          const LeagueMember(),
          const LeagueMember(),
          const LeagueMember(),
          const LeagueMember(),
          const LeagueMember(),
        ],
      ),
    );
  }

}

class TopThreeBanner extends StatelessWidget{
  const TopThreeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        // border: Border.all(),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TopThree(name: "Andrew", radius: 45, position: 2,),
          TopThree(name: "Andrew", radius: 70, position: 1,),
          TopThree(name: "Andrew", radius: 45, position: 3,),
        ],
      ),
    );
  }

}

class TopThree extends StatelessWidget{
  const TopThree({super.key, required this.name, required this.radius, required this.position});

  final String name;
  final double radius;
  final int position;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        // border: Border.all(),
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: radius,
          ),
          const SizedBox(height: 3),
          Text(position.toString(), style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
          Text(name, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

}

class LeagueMember extends StatelessWidget{
  const LeagueMember({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: double.maxFinite,
      decoration: const BoxDecoration(
        // border: Border.all(),
      ),
      child: const Row(
        children: [
          // Container(
          //   width: 20,
          //   decoration: BoxDecoration(
          //     // border: Border.all(),
          //   ),
          //   child: const Center(
          //     child: Text("1", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          //   ),
          // ),
          // const SizedBox(width: 5),
          CircleAvatar(
            radius: 25,
          ),
          SizedBox(width: 15),
          Text("Andrew", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
          Spacer(),
          Text("4", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
          SizedBox(width: 5),
          Icon(Icons.keyboard_arrow_up_rounded),
        ],
      ),
    );
  }

}