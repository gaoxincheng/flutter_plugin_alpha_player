import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_alpha_player_plugin/alpha_player_for_android.dart';
import 'package:flutter_alpha_player_plugin/alpha_player_for_ios.dart';
import 'package:flutter_alpha_player_plugin/alpha_player_controller.dart';

class AlphaPlayerView extends StatelessWidget {
  final AlphaPlayerController controller;

  const AlphaPlayerView({Key? key,
    required this.controller}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return  AlphaPlayerForAndroid(controller:controller);
    } else if (Platform.isIOS) {
      return  AlphaPlayerForIOS(controller:controller);
    }
    return Container();
  }
}
