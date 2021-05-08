import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:campus/datamodels/navigation/navigation_item_model.dart';

class NavBarItemWrap extends ProviderWidget<NavBarItemModel> {
  @override
  Widget build(BuildContext context, NavBarItemModel model) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, top: 10.0),
      child: Container(
        padding:
            const EdgeInsets.only(top: 16, bottom: 16, right: 24, left: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
          gradient: model.selected
              ? LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xff797efa),
                    Color(0xff676dfd),
                  ],
                )
              : null,
          boxShadow: model.selected
              ? [
                  BoxShadow(
                    color: Color(0xffabaefc),
                    offset: const Offset(0.0, 3.0),
                    blurRadius: 10,
                    spreadRadius: 1.0,
                  ),
                ]
              : [],
        ),
        child: Center(
          child: Row(
            children: <Widget>[
              Icon(
                model.iconData,
                color: model.selected
                    ? Color(0xffb3b9ff)
                    : Theme.of(context).accentColor,
                size: 20,
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                model.title,
                style: model.selected
                    ? Theme.of(context).primaryTextTheme.bodyText1
                    : Theme.of(context).textTheme.bodyText1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
