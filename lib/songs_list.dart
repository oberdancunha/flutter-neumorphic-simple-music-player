import 'package:flutter/material.dart';

import 'misc/song.dart';
import 'theme/theme_extension.dart';
import 'ui_widgets/ui_button.dart';
import 'ui_widgets/ui_select.dart';
import 'ui_widgets/ui_selected_button.dart';

class SongsList extends StatefulWidget {
  const SongsList({super.key});

  @override
  State<SongsList> createState() => _SongsListState();
}

class _SongsListState extends State<SongsList> {
  late List<Song> songs;
  late double buttonSizeAdjust;
  late double iconSizeAdjust;
  late double iconSelectedSizeAdjust;

  @override
  void initState() {
    super.initState();
    buttonSizeAdjust = 0.09;
    iconSizeAdjust = 0.05;
    iconSelectedSizeAdjust = 0.04;
    songs = listSongs();
  }

  @override
  Widget build(BuildContext context) {
    final appThemeExtension = Theme.of(context).extension<AppThemeExtension>()!;

    return ListView.builder(
      itemCount: songs.length,
      itemBuilder: (_, index) {
        final song = songs.elementAt(index);

        return SizedBox(
          height: MediaQuery.of(context).size.height * (song.isPlaying ? 0.11 : 0.09),
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Visibility(
                visible: song.isPlaying,
                child: UISelect(
                  height: MediaQuery.of(context).size.height * 0.12,
                  width: MediaQuery.of(context).size.width,
                  baseColor: Theme.of(context).colorScheme.primary,
                  adjustColor: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          song.name,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        Text(song.album),
                      ],
                    ),
                    if (song.isPlaying)
                      UISelectedButton(
                        iconData: Icons.pause_rounded,
                        iconColor: Colors.white,
                        iconSize: MediaQuery.of(context).size.width * iconSelectedSizeAdjust,
                        width: MediaQuery.of(context).size.width * buttonSizeAdjust,
                        baseColor: appThemeExtension.buttonSelectedColor!,
                        darkShadowColor: appThemeExtension.darkShadowColor!,
                        lightShadowColor: appThemeExtension.darkShadowColor!,
                        adjustColor: 22,
                      )
                    else
                      UIButton(
                        iconData: Icons.play_arrow_rounded,
                        iconColor: Colors.grey.shade500,
                        iconSize: MediaQuery.of(context).size.width * iconSizeAdjust,
                        width: MediaQuery.of(context).size.width * buttonSizeAdjust,
                        baseColor: Theme.of(context).colorScheme.primary,
                        darkShadowColor: appThemeExtension.darkShadowColor!,
                        lightShadowColor: appThemeExtension.lightSmallShadowColor!,
                        adjustColor: 40,
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
