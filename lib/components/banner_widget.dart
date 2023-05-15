import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {

  int _currentPage = 0;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      return setState(() {
        if (_currentPage < 3) {
          _currentPage++;
        } else {
          _currentPage = 0;
        }
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 160,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.yellow.shade700,
            borderRadius: BorderRadius.circular(10)),
        child: PageView(
          controller: _pageController,
          children: [
            Image.asset(
              "assets/images/banner-1.jpeg",
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/images/banner-2.jpeg",
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/images/banner-3.jpeg",
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
