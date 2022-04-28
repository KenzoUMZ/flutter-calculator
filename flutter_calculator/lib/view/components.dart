import 'package:flutter/material.dart';

class UIComponent {
  Column numberPadBuilder() {
    return (Column(
      children: [
        Row(
          children: [
            FloatingActionButton(
              onPressed: () => {null},
              child: const Text('7'),
            ),
            FloatingActionButton(
              onPressed: () => {},
              child: const Text('8'),
            )
          ],
        )
      ],
    ));
  }
}
