import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MentalHealth extends StatelessWidget {
  const MentalHealth({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text("Welcome", style: TextStyle(fontSize: 15)),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text("Find time\nfor yourself",
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.w700)),
          ),
          const SizedBox(height: 30),
          Carousel(),
          const SizedBox(height: 40),
          const Journal(),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text("Explore by content",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          ),
          const SizedBox(height: 15),
          Container(
            width: double.maxFinite,
            height: 220,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(
                // border: Border.all(),
                ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.55,
                  // height: MediaQuery.of(context).size.width * 0.55,
                  height: double.maxFinite,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.leaf),
                      Text("Meditation",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700)),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.32,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.moon),
                            Text("Sleep",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.32,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.music),
                            Text("Music",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Podcasts",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                Text("See All",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const VideoBanner(),
          const SizedBox(height: 10),
          const VideoBanner(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Soundscapes",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                Text("See All",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 20),
                SoundScapes(title: 'Rain on Leaves'),
                SoundScapes(title: 'Ocean Waves'),
                SoundScapes(title: 'White Noise'),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Popular Stories",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                Text("See All",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 20),
                Stories(title: "From Sea to Sky", author: "Keegan Connor Tracy"),
                Stories(title: "From Sea to Sky", author: "Keegan Connor Tracy"),
                Stories(title: "From Sea to Sky", author: "Keegan Connor Tracy"),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const TalkToTherapist(),
        ],
      ),
    );
  }
}

class Carousel extends StatelessWidget {
  final List<String> imgList = [
    'https://via.placeholder.com/600/92c952',
    'https://via.placeholder.com/600/771796',
    'https://via.placeholder.com/600/24f355',
    'https://via.placeholder.com/600/d32776',
    'https://via.placeholder.com/600/f66b97',
  ];

  final List<Widget> carouselElements = [
    const CarouselElement(),
    const CarouselElement(),
    const CarouselElement(),
    const CarouselElement(),
    const CarouselElement(),
  ];

  Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 350,
        aspectRatio: 16 / 9,
        viewportFraction: 0.65,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.35,
        scrollDirection: Axis.horizontal,
        // enlargeStrategy: CenterPageEnlargeStrategy.,
      ),
      // items: imgList.map((item) => Container(
      //   child: Center(
      //     child: Image.network(item, fit: BoxFit.cover, width: 1000),
      //   ),
      // )).toList(),
      items: carouselElements,
    );
  }
}

class CarouselElement extends StatelessWidget {
  const CarouselElement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 600,
      width: MediaQuery.of(context).size.width * 0.65,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}

class TalkToTherapist extends StatelessWidget {
  const TalkToTherapist({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Feeling upset?\nTalk to a\ntherapist.",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
          Container(
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Start a Conversation",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w700)),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class VideoBanner extends StatelessWidget {
  const VideoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: 200,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width : MediaQuery.of(context).size.width*0.4,
                  child: const Text(
                    "Declutter the noise in your mind",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: FaIcon(FontAwesomeIcons.play, size: 20),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width*0.7,
                child: const Text(
                  "Declutter the noise in your mind ft Alexander",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: FaIcon(FontAwesomeIcons.heart),
              ),
            ],
          ),
          const SizedBox(height: 15),
          const Row(
            children: [
              FaIcon(Icons.star, size: 12),
              SizedBox(width: 5),
              Text("4.8"),
              SizedBox(width: 15),
              Text("|"),
              SizedBox(width: 15),
              Text("16.7K views"),
            ],
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}

class SoundScapes extends StatelessWidget{
  const SoundScapes({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          const SizedBox(height: 5),
          Text(title,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

class Stories extends StatelessWidget{
  const Stories({super.key, required this.title, required this.author});

  final String title;
  final String author;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          const SizedBox(height: 5),
          Text(title,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
          Text(author,
              style: const TextStyle(fontSize: 15)),
        ],
      ),
    );
  }
}

class Journal extends StatelessWidget{
  const Journal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.maxFinite,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          FaIcon(FontAwesomeIcons.book),
          const SizedBox(width: 20),
          Text("My Journal",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

}
