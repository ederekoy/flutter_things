import 'package:flutter/material.dart';

class NeuButton extends StatefulWidget {
  const NeuButton({Key? key, required this.isElevated}) : super(key: key);

  final bool isElevated;

  @override
  State<NeuButton> createState() => _NeuButtonState(isElevated);
}

class _NeuButtonState extends State<NeuButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(50),
            boxShadow: isElevated
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
      ),
      onTap: (() {
        setState(() {
          isElevated = !isElevated;
        });
      }),
    );
  }
}
