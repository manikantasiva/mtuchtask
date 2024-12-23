import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerSlider extends StatefulWidget {
  @override
  _BannerSliderState createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  final PageController _controller = PageController();
  final List<String> _images = [
    'https://via.placeholder.com/600x300',
    'https://via.placeholder.com/600x300/ff7f7f',
    'https://via.placeholder.com/600x300/7f7fff',
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageView.builder(
          controller: _controller,
          itemCount: _images.length,
          itemBuilder: (context, index) {
            return Image.network(
              _images[index],
              fit: BoxFit.cover,
              width: double.infinity,
            );
          },
        ),
        Positioned(
          bottom: 10,
          child: SmoothPageIndicator(
            controller: _controller,
            count: _images.length,
            effect: WormEffect(
              dotWidth: 10,
              dotHeight: 10,
              activeDotColor: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
