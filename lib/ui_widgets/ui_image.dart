import 'package:flutter/material.dart';

import '../misc/colors.dart';
import '../theme/theme_extension.dart';

class UIImage extends StatefulWidget {
  final String image;
  final double width;
  final Color baseColor;
  final Color darkShadowColor;
  final Color lightShadowColor;

  const UIImage({
    required this.image,
    required this.width,
    required this.baseColor,
    required this.darkShadowColor,
    required this.lightShadowColor,
    super.key,
  });

  @override
  State<UIImage> createState() => _UIImageState();
}

class _UIImageState extends State<UIImage> {
  late UIColors backgroundBaseColor;

  @override
  void initState() {
    super.initState();
    backgroundBaseColor = UIColors(baseColor: widget.baseColor);
  }

  @override
  Widget build(BuildContext context) {
    final appThemeExtension = Theme.of(context).extension<AppThemeExtension>()!;

    return SizedBox(
      height: widget.width,
      width: widget.width,
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.image),
            fit: BoxFit.cover,
          ),
          color: widget.baseColor,
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
              offset: const Offset(-4, -4),
              blurRadius: 8,
              spreadRadius: 1,
            ),
          ],
          border: Border.all(
            color: appThemeExtension.imageBorderColor!,
            width: 5,
          ),
        ),
      ),
    );
  }
}
