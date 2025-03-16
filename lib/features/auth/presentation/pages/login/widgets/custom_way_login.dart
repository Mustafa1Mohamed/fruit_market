import 'package:flutter/material.dart';
import 'package:fruit_market/core/utils/size_config.dart';

class CustomWayLogin extends StatelessWidget {
  const CustomWayLogin({
    super.key,
    required this.icon,
    required this.color,
    this.onTap,
  });
  final IconData icon;
  final Color color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: SizeConfig.defaultSize! * 19,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: const Color(0xff707070)),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color, size: 30),
            const SizedBox(width: 12),
            const Text('Login with'),
          ],
        ),
      ),
    );
  }
}
