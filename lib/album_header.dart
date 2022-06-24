import 'package:flutter/material.dart';

import 'theme/theme_extension.dart';
import 'ui_widgets/ui_button.dart';
import 'ui_widgets/ui_image.dart';

class AlbumHeader extends StatefulWidget {
  const AlbumHeader({super.key});

  @override
  State<AlbumHeader> createState() => _AlbumHeaderState();
}

class _AlbumHeaderState extends State<AlbumHeader> {
  late double buttonSizeAdjust;

  @override
  void initState() {
    super.initState();
    buttonSizeAdjust = 0.13;
  }

  @override
  Widget build(BuildContext context) {
    final appThemeExtension = Theme.of(context).extension<AppThemeExtension>()!;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        UIButton(
          iconData: Icons.favorite,
          iconColor: Colors.grey.shade500,
          iconSize: MediaQuery.of(context).size.width * 0.05,
          width: MediaQuery.of(context).size.width * buttonSizeAdjust,
          baseColor: Theme.of(context).colorScheme.primary,
          darkShadowColor: appThemeExtension.darkShadowColor!,
          lightShadowColor: appThemeExtension.lightShadowColor!,
          adjustColor: 40,
        ),
        UIImage(
          image: 'assets/images/evol.jpeg',
          width: MediaQuery.of(context).size.width * 0.4,
          baseColor: Theme.of(context).colorScheme.primary,
          darkShadowColor: appThemeExtension.darkShadowColor!,
          lightShadowColor: appThemeExtension.lightShadowColor!,
        ),
        UIButton(
          iconData: Icons.more_horiz,
          iconColor: Colors.grey.shade500,
          iconSize: MediaQuery.of(context).size.width * 0.07,
          width: MediaQuery.of(context).size.width * buttonSizeAdjust,
          baseColor: Theme.of(context).colorScheme.primary,
          darkShadowColor: appThemeExtension.darkShadowColor!,
          lightShadowColor: appThemeExtension.lightShadowColor!,
          adjustColor: 40,
        ),
      ],
    );
  }
}
