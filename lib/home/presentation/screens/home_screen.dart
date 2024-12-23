import 'package:flutter/material.dart';
import 'package:mtouchlabtask/home/presentation/widgets/banner_slider_widget.dart';
import 'package:mtouchlabtask/home/presentation/widgets/topApp_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: BannerSlider(),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                color: Colors.grey.shade200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Your Banner Text Here',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    ElevatedButton.icon(
                      onPressed: () {
                        // Add navigation or functionality
                      },
                      icon: Icon(Icons.arrow_right),
                      label: Text('Learn More'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
