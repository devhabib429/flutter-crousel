import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: SizedBox(
              height: 200,
              child: CarouselSlider(
                  items: [
                    Container(
                      height: 60,
                      color: Colors.deepOrangeAccent,
                    ),
                    Container(
                      height: 60,
                      color: Colors.lightBlue,
                    ),
                    Container(
                      height: 60,
                      color: Colors.lightGreen,
                    )
                  ],
                  options: CarouselOptions(
                    enlargeFactor: 0.2,
                    enlargeCenterPage: true,
                    height: 250,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _index = index;
                      });
                    },
                  )),
            ),
          ),
          Container(
            child: CarouselIndicator(
              count: 3,
              index: _index,
              color: Colors.white,
              activeColor: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
