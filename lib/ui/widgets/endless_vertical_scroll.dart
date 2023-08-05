import 'package:flutter/material.dart';

class VerticalScrollView extends StatelessWidget {
  /// A custom scrollview that builds a linear array of widgets with a optional footer.
  VerticalScrollView({
    Key? key,
    this.controller,
    this.cacheExtent,
    required List<Widget> children,
    this.footer,
    this.shrinkWrap = false,
  })  : sliverDelegate = SliverChildListDelegate(children),
        super(key: key);

  /// A custom scrollview that lazily builds a linear array of widgets with a optional footer.
  VerticalScrollView.builder({
    Key? key,
    this.controller,
    required List<Widget> children,
    this.footer,
    this.cacheExtent,
    this.shrinkWrap = false,
  })  : sliverDelegate = SliverChildBuilderDelegate(
          (BuildContext context, int index) => children[index],
          childCount: children.length,
        ),
        super(key: key);

  final ScrollController? controller;
  final Widget? footer;
  final bool shrinkWrap;
  final SliverChildDelegate sliverDelegate;

  final double? cacheExtent;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: controller,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: shrinkWrap,
      cacheExtent: cacheExtent,
      slivers: <Widget>[
        SliverList(delegate: sliverDelegate),
        if (footer != null)
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: footer,
            ),
          )
      ],
    );
  }
}
