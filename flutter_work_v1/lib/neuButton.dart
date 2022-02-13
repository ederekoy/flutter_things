import 'package:flutter/material.dart';

class NeuButton extends StatefulWidget {
  const NeuButton({
    Key? key,
    required this.isElevated,
    required this.btnDrtn,
    this.btnHeight = 200,
    this.btnWidth = 200,
  }) : super(key: key);
  final int btnDrtn;
  final double btnHeight;
  final double btnWidth;
  final bool isElevated;

  @override
  State<NeuButton> createState() => _NeuButtonState();
}

class _NeuButtonState extends State<NeuButton> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: widget.btnDrtn),
      height: widget.btnHeight,
      width: widget.btnWidth,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(50),
          boxShadow: widget.isElevated
              ? [
                  BoxShadow(
                    color: Colors.grey[500]!,
                    offset: const Offset(4, 4),
                    blurRadius: 15,
                    spreadRadius: 1,
                  ),
                  const BoxShadow(
                    color: Colors.white,
                    offset: Offset(-4, -4),
                    blurRadius: 15,
                    spreadRadius: 1,
                  )
                ]
              : null),
    );
  }
}
