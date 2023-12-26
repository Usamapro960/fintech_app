import 'package:fintech/core/utilities/colors.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Widget _child;

  AppButton({
    Key? key,
    final double? height,
    final double? width,
    final double? elevation,
    required final Widget child,
    final Color? backgroundColor,
    final VoidCallback? onPressed,
    final bool? isProcessing,
    final BoxConstraints? constraints,
  })  : _child = _ElevatedButton(
          height: height,
          width: width,
          elevation: elevation,
          backgroundColor: backgroundColor,
          onPressed: onPressed,
          isProcessing: isProcessing ?? false,
          constraints: constraints,
          child: child,
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return _child;
  }
}

class _ElevatedButton extends StatelessWidget {
  final double height;
  final double width;
  final double? elevation;
  final Widget child;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  final bool isProcessing;
  final BoxConstraints? constraints;

  const _ElevatedButton({
    final double? height,
    final double? width,
    this.elevation,
    this.onPressed,
    this.backgroundColor,
    this.constraints,
    this.isProcessing = false,
    required this.child,
  })  : height = height ?? 48.0,
        width = width ?? double.infinity;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      constraints: constraints,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          elevation: MaterialStateProperty.all(elevation),
          backgroundColor: backgroundColor == null
              ? MaterialStateProperty.all<Color>(AppColors.kPrimaryColor)
              : MaterialStateProperty.all<Color>(backgroundColor!),
        ),
        onPressed: () {
          if (isProcessing) return;
          if (onPressed != null) onPressed!();
        },
        child: isProcessing
            ? _CircularProgressIndicator(
                height: height * 0.7,
                color: Theme.of(context).colorScheme.onPrimary,
              )
            : child,
      ),
    );
  }
}

class _CircularProgressIndicator extends StatelessWidget {
  final double height;
  final Color? color;

  const _CircularProgressIndicator({Key? key, required this.height, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height * 0.7,
      width: height * 0.7,
      child: CircularProgressIndicator(
          strokeWidth: 2, color: color ?? Colors.grey),
    );
  }
}
