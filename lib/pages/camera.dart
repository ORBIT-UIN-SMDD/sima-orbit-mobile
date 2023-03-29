import 'dart:io';

import 'package:camerawesome/camerawesome_plugin.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:sima_orbit_mobile/provider/auth_provider.dart';

class Camera extends StatelessWidget {
  const Camera({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CameraAwesomeBuilder.awesome(
        saveConfig: SaveConfig.photo(
          pathBuilder: () async {
            final Directory extDir = await getTemporaryDirectory();
            final testDir =
                await Directory('${extDir.path}/test').create(recursive: true);
            return '${testDir.path}/${DateTime.now().millisecondsSinceEpoch}.jpg';
          },
        ),
        onMediaTap: (mediaCapture) {
          Provider.of<AuthProvider>(context, listen: false)
              .TakePicture(mediaCapture, context);
        },
      ),
    );
  }
}
