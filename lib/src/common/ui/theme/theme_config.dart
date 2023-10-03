
import 'package:flora_test/src/common/ui/theme/text_styles_config.dart';

import 'colors_config.dart';
import 'i_theme_config.dart';
import 'icons_config.dart';
import 'images_config.dart';

class ThemeConfig implements IThemeConfig {
  ThemeConfig({
    required this.colors,
    required this.textStyles,
    required this.icons,
    required this.images,
  });

  @override
  final ColorsConfig colors;
  @override
  final TextStylesConfig textStyles;
  @override
  final IconsConfig icons;
  @override
  final ImagesConfig images;
}
