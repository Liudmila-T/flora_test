import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../common/ui/theme/colors_config.dart';
import '../../common/ui/theme/i_theme_config.dart';
import '../../common/ui/theme/icons_config.dart';
import '../../common/ui/theme/images_config.dart';
import '../../common/ui/theme/text_styles_config.dart';
import '../../common/ui/theme/theme_config.dart';


@module
abstract class UIModules {

  @singleton
  @factoryMethod
  IThemeConfig get themeConfig {
    return ThemeConfig(
      colors: ColorsConfig(),
      textStyles: TextStylesConfig(),
      icons: IconsConfig(),
      images: ImagesConfig(),
    );
  }
}
