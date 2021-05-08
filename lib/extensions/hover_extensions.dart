import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;
import 'package:campus/widgets/translate_on_hover.dart';
import 'package:flutter/rendering.dart';

extension HoverExtensions on Widget {
  Widget get showCursorOnHover {
    return MouseRegion(
      //cursor: SystemMouseCursors.click,
      child: this,
    );
  }

  Widget get showHandOnHover {
    return MouseRegion(
     //cursor: SystemMouseCursors.grab,
      child: this,
    );
  }

  Widget get moveUpOnHover {
    if (html.window.document == null) {
      return this;
    }
    return TranslateOnHover(
      child: this,
    );
  }
}
