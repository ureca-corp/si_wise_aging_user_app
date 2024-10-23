import 'package:flutter/material.dart';
import 'package:si_wise_aging_user_app/apps/global/theme/color_cheme.dart';

// 캡션 컨테이너
class CaptionBox extends StatelessWidget {
  const CaptionBox({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorNeutral95,
        borderRadius: BorderRadius.circular(24),
      ),
      child: child,
    );
  }
}
