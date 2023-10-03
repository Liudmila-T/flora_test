
import 'colors_config.dart';
import 'icons_config.dart';
import 'images_config.dart';
import 'text_styles_config.dart';

abstract class IThemeConfig {
  IThemeConfig({
    required this.colors,
    required this.textStyles,
    required this.icons,
    required this.images,
  });

  final ColorsConfig colors;
  final TextStylesConfig textStyles;
  final IconsConfig icons;
  final ImagesConfig images;
}
