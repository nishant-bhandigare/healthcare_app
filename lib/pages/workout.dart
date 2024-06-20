import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            width: MediaQuery.of(context).size.width,
            height: 60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(child: FaIcon(FontAwesomeIcons.bars)),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(child: FaIcon(FontAwesomeIcons.magnifyingGlass)),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("Fitness Club", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900)),
          ),
          Container(
            child: const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  ClubBanner(title: 'Yoga', count: 1234,),
                  ClubBanner(title: 'Runners', count: 4512,),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20,),
            child: const Text("Categories", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
          ),
          const SizedBox(height: 10),
          Container(
            child: const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  CategoryElement(),
                  CategoryElement(),
                  CategoryElement(),
                  CategoryElement(),
                  CategoryElement(),
                  CategoryElement(),
                  CategoryElement(),
                  CategoryElement(),
                ],
              ),
            )
          ),
          const SizedBox(height: 10),
          const WorkoutPlan(title: 'Drill'),
          const WorkoutPlan(title: 'Drill'),
          const WorkoutPlan(title: 'Drill'),
          const WorkoutPlan(title: 'Drill'),
        ],
      ),
    );
  }
}

class ClubBanner extends StatelessWidget{
  const ClubBanner({super.key, required this.title, required this.count});

  final String title;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.55,
      height: MediaQuery.of(context).size.height*0.35,
      margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$title\nClub", style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
          Row(
            children: [
              const FaIcon(FontAwesomeIcons.user, size: 15),
              const SizedBox(width: 5),
              Text(count.toString(), style: const TextStyle(fontWeight: FontWeight.w500)),
            ],
          ),
          const Spacer(),
          Container(
            width: 50,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text("Join", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
            ),
          )
        ],
      ),
    );
  }
}

class CategoryElement extends StatelessWidget{
  const CategoryElement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Center(child: FaIcon(FontAwesomeIcons.personBiking)),
    );
  }

}

class WorkoutPlan extends StatelessWidget{
  const WorkoutPlan({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height*0.2,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("$title", style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                FaIcon(FontAwesomeIcons.play, size: 15),
                SizedBox(width: 10),
                Text("25 min", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
              ],
            ),
          )
        ],
      ),
    );
  }

}