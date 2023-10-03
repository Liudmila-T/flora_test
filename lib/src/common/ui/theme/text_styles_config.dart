import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../config/config.dart';

class TextStylesConfig {
  TextStyle buttonBigTitle({Color? color}) {
    return GoogleFonts.nunito(
      fontSize: 29,
      fontWeight: FontWeight.w900,
      color: color ?? theme.colors.black,
    );
  }

  TextStyle buttonBigSubtitle({Color? color}) {
    return GoogleFonts.nunito(
      fontSize: 19,
      fontWeight: FontWeight.w400,
      color: color ?? theme.colors.black,
    );
  }

  TextStyle pageTitle({Color? color}) {
    return GoogleFonts.nunito(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: color ?? theme.colors.black,
    );
  }

  TextStyle year({Color? color}) {
    return GoogleFonts.nunito(
      fontSize: 40,
      fontWeight: FontWeight.w900,
      color: color ?? theme.colors.black,
    );
  }
}
