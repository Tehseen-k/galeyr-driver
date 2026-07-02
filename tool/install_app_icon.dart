import 'dart:io';

import 'package:image/image.dart' as img;

const sourcePath = 'assets/image/userlogoapp.png';

const mipmapSizes = <String, int>{
  'mipmap-mdpi': 48,
  'mipmap-hdpi': 72,
  'mipmap-xhdpi': 96,
  'mipmap-xxhdpi': 144,
  'mipmap-xxxhdpi': 192,
};

const foregroundFolders = <String>[
  'drawable-mdpi',
  'drawable-hdpi',
  'drawable-xhdpi',
  'drawable-xxhdpi',
  'drawable-xxxhdpi',
];

void main() {
  final source = img.decodePng(File(sourcePath).readAsBytesSync())!;

  for (final entry in mipmapSizes.entries) {
    final resized = img.copyResize(
      source,
      width: entry.value,
      height: entry.value,
      interpolation: img.Interpolation.cubic,
    );
    final outDir = Directory('android/app/src/main/res/${entry.key}');
    outDir.createSync(recursive: true);
    File('${outDir.path}/ic_launcher.png')
        .writeAsBytesSync(img.encodePng(resized));
  }

  final adaptiveXml = File(
    'android/app/src/main/res/mipmap-anydpi-v26/ic_launcher.xml',
  );
  if (adaptiveXml.existsSync()) {
    adaptiveXml.deleteSync();
    stdout.writeln('Deleted ic_launcher.xml (adaptive icon removed)');
  }

  final adaptiveRoundXml = File(
    'android/app/src/main/res/mipmap-anydpi-v26/ic_launcher_round.xml',
  );
  if (adaptiveRoundXml.existsSync()) adaptiveRoundXml.deleteSync();

  for (final folder in foregroundFolders) {
    final f = File('android/app/src/main/res/$folder/ic_launcher_foreground.png');
    if (f.existsSync()) f.deleteSync();
  }

  stdout.writeln('Done! Android icons installed from $sourcePath');
}
