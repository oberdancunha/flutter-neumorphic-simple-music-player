import 'package:flutter/material.dart';

import '../misc/colors.dart';

class UISelectedButton extends StatefulWidget {
  final IconData iconData;
  final Color iconColor;
  final double iconSize;
  final double width;
  final Color baseColor;
  final Color darkShadowColor;
  final Color lightShadowColor;
  final int adjustColor;

  const UISelectedButton({
    required this.iconData,
    required this.iconColor,
    required this.iconSize,
    required this.width,
    required this.baseColor,
    required this.darkShadowColor,
    required this.lightShadowColor,
    required this.adjustColor,
    super.key,
  });

  @override
  State<UISelectedButton> createState() => _UISelectedButtonState();
}

class _UISelectedButtonState extends State<UISelectedButton> {
  late UIColors backgroundBaseColor;
  late UIColors buttonColor;

  @override
  void initState() {
    super.initState();
    backgroundBaseColor = UIColors(baseColor: widget.baseColor);
    buttonColor = UIColors(
      baseColor: UIColors(baseColor: widget.baseColor).getColor(
        adjustColor: 0 - widget.adjustColor ~/ 2,
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Stack(
        alignment: AlignmentDirectional.center,
        children: [
          SizedBox(
            height: widget.width,
            width: widget.width,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(widget.width),
                boxShadow: [
                  BoxShadow(
                    color: widget.darkShadowColor,
                    offset: const Offset(4, 4),
                    blurRadius: 8,
                    spreadRadius: 1,
                  ),
                  BoxShadow(
                    color: widget.lightShadowColor,
                    offset: const Offset(-8, -8),
                    blurRadius: 8,
                    spreadRadius: 1,
                  ),
                ],
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    backgroundBaseColor.getColor(adjustColor: widget.adjustColor),
                    backgroundBaseColor.getColor(adjustColor: 0 - widget.adjustColor),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: widget.width - 5,
            width: widget.width - 5,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(widget.width),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    buttonColor.getColor(adjustColor: 0 - widget.adjustColor),
                    buttonColor.getColor(adjustColor: widget.adjustColor),
                    buttonColor.getColor(adjustColor: widget.adjustColor),
                  ],
                ),
              ),
              child: Icon(
                widget.iconData,
                color: widget.iconColor,
                size: widget.iconSize,
              ),
            ),
          ),
        ],
      );
}
