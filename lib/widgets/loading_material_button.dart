import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';
import 'package:provider/provider.dart';

class LoadingMaterialButton extends StatelessWidget {
  const LoadingMaterialButton({
    Key key,
    this.color,
    this.disabledColor,
    this.loadingColor,
    this.shape,
    this.child,
    @required this.onPressed,
  }) : super(key: key);

  final Color color;
  final Color disabledColor;
  final Color loadingColor;
  final ShapeBorder shape;
  final Widget child;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Consumer<bool>(builder: (context, loading, _) {
      if (loading != null && loading) {
        return MaterialButton(
          color: color,
          disabledColor: color,
          shape: shape,
          child: LoadingBouncingLine.square(
            size: 20,
            backgroundColor: loadingColor ?? Color(0xff797efa),
          ),
          onPressed: null,
        );
      }

      return MaterialButton(
        color: color,
        disabledColor: disabledColor,
        shape: shape,
        child: child,
        onPressed: onPressed,
      );
    });
  }
}
