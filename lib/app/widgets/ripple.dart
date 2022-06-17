import 'package:flutter/material.dart';

class Ripple extends StatelessWidget {
  const Ripple({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8.0),
        child: InkWell(
          onTap: onTap,
          splashColor: Colors.black.withOpacity(0.5),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
