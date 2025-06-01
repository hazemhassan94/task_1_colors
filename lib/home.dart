import 'package:flutter/material.dart';
import 'data.dart';
import 'items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: EdgeInsets.all(8),
        children: List.generate(
          lettersAndNumbers.length,
          (index) => GridItemWidget(
            text: lettersAndNumbers[index],
            color: colors[index % colors.length],
          ),
        ),
      ),
    );
  }
}
