import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  group('FontAwesomeIcons', () {
    test('icons are plain IconData bound to the style font family', () {
      const cases = <(IconData, String)>[
        (FontAwesomeIcons.solidZero, 'FontAwesomeSolid'),
        (FontAwesomeIcons.zero, 'FontAwesomeRegular'),
        (FontAwesomeIcons.lightZero, 'FontAwesomeLight'),
        (FontAwesomeIcons.thinZero, 'FontAwesomeThin'),
        (FontAwesomeIcons.github, 'FontAwesomeBrands'),
      ];

      for (final (icon, family) in cases) {
        expect(icon.runtimeType, IconData);
        expect(icon.fontFamily, family);
        expect(icon.fontPackage, 'font_awesome_flutter');
      }
      expect(FontAwesomeIcons.solidZero.codePoint, 0x30);
    });
  });
}
