import 'package:flutter/material.dart';
import 'package:si_wise_aging_user_app/apps/global/theme/color_cheme.dart';

// 컴포넌트에 보더로 감싸는 컴포넌트
class BorderBox extends StatelessWidget {
  const BorderBox({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: colorNeutral90,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: child,
    );
  }
}
