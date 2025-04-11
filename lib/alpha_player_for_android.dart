import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_alpha_player_plugin/alpha_player_controller.dart';

/// Flutter 向原生的View传递参数
class AlphaPlayerForAndroid extends StatelessWidget {
  final AlphaPlayerController controller;
  const AlphaPlayerForAndroid({Key? key,
    required this.controller}) :super(key: key);

  void _onPlatformViewCreated(int id) {
    controller.createChannel(id);
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> params = <String, dynamic>{};
    return AndroidView(
      viewType: "flutter_alpha_player",
      onPlatformViewCreated: _onPlatformViewCreated,
      layoutDirection: TextDirection.ltr,
      creationParams: params,
      creationParamsCodec: const StandardMessageCodec(),
    );
  }
}
