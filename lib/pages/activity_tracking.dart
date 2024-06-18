import 'package:flutter/material.dart';
import 'package:healthcare_app/components/home_header.dart';
import 'package:healthcare_app/pages/test.dart';

class ActivityTrackingPage extends StatelessWidget {
  const ActivityTrackingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                // border: Border.all(),
                // color: Colors.cyan,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Report",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700)),
                      Text(
                        "Today, 25 August",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              child: const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 15),
                    CalenderElement(day: "Mon", date: 24),
                    CalenderElement(day: "Mon", date: 24),
                    CalenderElement(day: "Mon", date: 24),
                    CalenderElement(day: "Mon", date: 24),
                    CalenderElement(day: "Mon", date: 24),
                    CalenderElement(day: "Mon", date: 24),
                    CalenderElement(day: "Mon", date: 24),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            const PedoMeter(),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: const Text(
                "Health Metrics",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ActivityMetric(
                      title: "Heart beat",
                      icon: Icon(Icons.abc),
                      status: "Normal",
                      value: 170,
                      unit: "bpm"),
                  SizedBox(width: 15),
                  ActivityMetric(
                      title: "Heart beat",
                      icon: Icon(Icons.abc),
                      status: "Normal",
                      value: 170,
                      unit: "bpm"),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ActivityMetric(
                      title: "Heart beat",
                      icon: Icon(Icons.abc),
                      status: "Normal",
                      value: 170,
                      unit: "bpm"),
                  SizedBox(width: 15),
                  ActivityMetric(
                      title: "Heart beat",
                      icon: Icon(Icons.abc),
                      status: "Normal",
                      value: 170,
                      unit: "bpm"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PedoMeter extends StatelessWidget {
  const PedoMeter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(),
        // color: Colors.cyan,
      ),
    );
  }
}

class ActivityMetric extends StatelessWidget {
  const ActivityMetric(
      {super.key,
      required this.title,
      required this.icon,
      required this.status,
      required this.value,
      required this.unit});

  final String title;
  final Icon icon;
  final String status;
  final int value;
  final String unit;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 180,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(),
          // color: Colors.cyan,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title, style: const TextStyle(fontSize: 15)),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      // color: Colors.cyan,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: icon,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: ,
                children: [
                  Text(value.toString(),
                      style:
                          const TextStyle(fontSize: 35, fontWeight: FontWeight.w700)),
                  const SizedBox(width: 5),
                  Text(unit, style: const TextStyle(fontSize: 15)),
                ],
              ),
            ),
            Container(
              // height: 10,
              width: 80,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    status,
                    style: const TextStyle(fontSize: 10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CalenderElement extends StatelessWidget {
  const CalenderElement({super.key, required this.day, required this.date});

  final String day;
  final int date;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 80,
      padding: const EdgeInsets.symmetric(vertical: 15),
      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(day,
              style:
                  const TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
          Text(date.toString(),
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }
}
