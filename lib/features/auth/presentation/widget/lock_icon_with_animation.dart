part of '../screen/login_screen.dart';

class _LockIconWithAnimation extends StatelessWidget {
  const _LockIconWithAnimation({
    required this.shakeKey,
    required this.color,
  });

  final GlobalKey<ShakeWidgetState> shakeKey;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ShakeMe(
      key: shakeKey,
      shakeCount: 3,
      shakeOffset: 10,
      shakeDuration: const Duration(milliseconds: 500),
      child: Icon(
        Icons.lock,
        color: color,
        size: 100,
      ),
    );
  }
}
