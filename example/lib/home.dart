import 'package:flutter/material.dart';
import 'package:flutter_iconographic/flutter_iconographic.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Iconographic"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Horizontal"),
          ),
          // man
          Iconographic(
            value: 7,
            max: 10,
            showHalf: false,
            direction: Axis.horizontal,
            iconoWidget: IconoWidget(
              full: const Icon(
                Icons.man,
                color: Colors.blue,
                size: 36,
              ),
              empty: Icon(
                Icons.man,
                color: Colors.grey.shade400,
                size: 36,
              ),
            ),
          ),

          // women
          Iconographic(
            value: 4,
            max: 10,
            showHalf: false,
            direction: Axis.horizontal,
            iconoWidget: IconoWidget(
              full: const Icon(
                Icons.woman,
                color: Colors.pink,
                size: 36,
              ),
              empty: Icon(
                Icons.woman,
                color: Colors.grey.shade400,
                size: 36,
              ),
            ),
          ),

          // vertical
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Vertical"),
          ),

          Row(
            children: [
              // man
              Iconographic(
                value: 7,
                max: 10,
                showHalf: false,
                direction: Axis.vertical,
                iconoWidget: IconoWidget(
                  full: const Icon(
                    Icons.man,
                    color: Colors.blue,
                    size: 36,
                  ),
                  empty: Icon(
                    Icons.man,
                    color: Colors.grey.shade400,
                    size: 36,
                  ),
                ),
              ),

              // women
              Iconographic(
                value: 4,
                max: 10,
                showHalf: false,
                direction: Axis.vertical,
                iconoWidget: IconoWidget(
                  full: const Icon(
                    Icons.woman,
                    color: Colors.pink,
                    size: 36,
                  ),
                  empty: Icon(
                    Icons.woman,
                    color: Colors.grey.shade400,
                    size: 36,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
