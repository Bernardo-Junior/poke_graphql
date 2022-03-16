import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../utils/adaptive.dart';

/// An adaptive dialog action, meant to be used with [AdaptiveDialog].
///
/// In apple environments this renders a [CupertinoDialogAction],
/// in other environments it defaults to material theme
/// and renders a [TextButton]
class AdaptiveDialogAction extends StatelessWidget {
  const AdaptiveDialogAction({required this.onPressed, required this.child});

  final VoidCallback onPressed;
  final Widget child;

  Widget buildMaterialAction(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: child,
    );
  }

  Widget buildCupertinoAction(BuildContext context) {
    return CupertinoDialogAction(
      onPressed: onPressed,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return shouldUseMaterial(theme)
        ? buildMaterialAction(context)
        : buildCupertinoAction(context);
  }
}
