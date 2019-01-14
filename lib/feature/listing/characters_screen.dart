import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:rick_morty_app/data/models.dart';

const double _kFlingVelocity = 2.0;
final String _defaultTitle = "Character";


class _BackdropPanel extends StatelessWidget {
  final VoidCallback onTap;
  final GestureDragUpdateCallback onVerticalDragUpdate;
  final GestureDragEndCallback onVerticalDragEnd;
  final Widget title;
  final Widget child;

  const _BackdropPanel({
    Key key,
    this.onTap,
    this.onVerticalDragEnd,
    this.onVerticalDragUpdate,
    this.title,
    this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return null;
  }
}

class _BackdropTitle extends AnimatedWidget {

  final Widget frontTitle;
  final Widget backTitle;

  const _BackdropTitle({
    Key key,
    Listenable listenable,
    this.frontTitle,
    this.backTitle
  }) : super(key: key, listenable: listenable);

  @override
  Widget build(BuildContext context) {
    return null;
  }
}

class Backdrop extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }

}