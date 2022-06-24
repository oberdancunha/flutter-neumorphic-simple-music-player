import 'package:flutter/material.dart';

import '../misc/colors.dart';

class UISelect extends StatefulWidget {
  final double height;
  final double width;
  final Color baseColor;
  final int adjustColor;

  const UISelect({
    required this.height,
    required this.width,
    required this.baseColor,
    required this.adjustColor,
    super.key,
  });

  @override
  State<UISelect> createState() => _UISelectState();
}

class _UISelectState extends State<UISelect> {
  late UIColors backgroundColor;
  late double borderRadius;
  late int internalBoxSizeAdjust;

  @override
  void initState() {
    super.initState();
    backgroundColor = UIColors(baseColor: widget.baseColor);
    borderRadius = 15;
    internalBoxSizeAdjust = 15;
  }

  @override
  Widget build(BuildContext context) => Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: widget.height,
            width: widget.width,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    backgroundColor.getColor(adjustColor: widget.adjustColor),
                    backgroundColor.getColor(adjustColor: widget.adjustColor),
                    backgroundColor.getColor(adjustColor: 0 - widget.adjustColor),
                    backgroundColor.getColor(adjustColor: 0 - widget.adjustColor),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: widget.height * 0.9,
            width: widget.width,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadius),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    backgroundColor.getColor(
                      adjustColor: internalBoxSizeAdjust - widget.adjustColor,
                    ),
                    backgroundColor.getColor(
                      adjustColor: internalBoxSizeAdjust - widget.adjustColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
}
