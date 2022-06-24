import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'album_header.dart';
import 'songs_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    if (Platform.isIOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: theme.colorScheme.brightness,
          statusBarIconBrightness: theme.colorScheme.brightness,
        ),
      );
    }

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              children: [
                const Text(
                  'EVOL • FUTURE',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  child: const AlbumHeader(),
                ),
                const Expanded(child: SongsList()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
