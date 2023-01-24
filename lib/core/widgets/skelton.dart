import 'package:flutter/material.dart';

class skelton extends StatelessWidget {
  const skelton({Key? key,
    this.height,
    this.width,
  });
  final double ?height, width;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: height,
      width: width,

      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.5),
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
    );
  }
}
