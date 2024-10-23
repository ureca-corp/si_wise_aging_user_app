import 'package:flutter/material.dart';
import 'package:si_wise_aging_user_app/apps/global/theme/color_cheme.dart';

// 완료된 서명 목록 섹션
class CompletedSignatureSection extends StatelessWidget {
  const CompletedSignatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: colorNeutral20,
                fontWeight: FontWeight.bold,
              ),
          "완료된 서명",
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
