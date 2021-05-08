import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:campus/datamodels/navigation/navigation_item_model.dart';
import 'package:campus/widgets/nav_bar/navbar_item_wrap.dart';
import 'package:campus/extensions/hover_extensions.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool selected;
  final GestureTapCallback onTap;
  NavBarItem(this.title, {this.icon, this.selected, this.onTap});

  @override
  Widget build(BuildContext context) {
    var model = NavBarItemModel(
      selected: selected,
      title: title,
      iconData: icon,
    );
    return GestureDetector(
      onTap: onTap,
      child: Provider.value(
        value: model,
        child: ScreenTypeLayout(
          mobile: NavBarItemWrap(),
        ).showCursorOnHover.moveUpOnHover,
      ),
    );
  }
}
