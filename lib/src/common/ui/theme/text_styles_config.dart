
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../config/config.dart';

class TextStylesConfig {


  TextStyle title({Color? color}) {
    return GoogleFonts.nunito(
      fontSize: 29,
      fontWeight: FontWeight.w900,
      color: color ?? theme.colors.black,
    );
  }
  TextStyle subtitle({Color? color}) {
    return GoogleFonts.nunito(
      fontSize: 19,
      fontWeight: FontWeight.w400,
      color: color ?? theme.colors.black,
    );
  }


  }


