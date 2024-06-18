import 'package:flutter/material.dart';

class MealGroup extends StatelessWidget{
  const MealGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(),
        // color: Colors.cyan,
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: double.maxFinite,
            height: 60,
            decoration: const BoxDecoration(
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
                const SizedBox(width: 10),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Breakfast", style: TextStyle(fontSize: 20)),
                    Text("350 calories", style: TextStyle(fontSize: 15),),
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
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            width: double.maxFinite,
            decoration: const BoxDecoration(
              // border: Border.all(),
              // color: Colors.cyan,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FoodElement(title: "Proteins", amount: 62.5),
                FoodElement(title: "Fats", amount: 23.6),
                FoodElement(title: "Carbs", amount: 45.7),
                FoodElement(title: "RDC", amount: 14),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: double.maxFinite,
            height: 60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
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
              ],
            ),
          ),
        ],
      ),
    );
  }

}

class FoodElement extends StatelessWidget{
  const FoodElement({super.key, required this.title, required this.amount});

  final String title;
  final double amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(title, style: const TextStyle(fontSize: 12)),
          Text(amount.toString(), style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }

}