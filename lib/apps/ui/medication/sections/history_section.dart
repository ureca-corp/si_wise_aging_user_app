import 'package:flutter/material.dart';
import 'package:si_wise_aging_user_app/apps/global/theme/color_cheme.dart';
import 'package:si_wise_aging_user_app/common/components/border_box/border_box.dart';

// 투약 기록 섹션
class MedicationHistorySection extends StatelessWidget {
  const MedicationHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          style: textTheme.titleLarge?.copyWith(
                color: colorNeutral20,
                fontWeight: FontWeight.bold,
              ) ??
              const TextStyle(
                color: colorNeutral20,
                fontWeight: FontWeight.bold,
              ),
          "11월 투약 기록",
        ),
        const SizedBox(height: 16),
        BorderBox(
            child: Column(
          children: [
            Text(
              style: textTheme.titleSmall?.copyWith(
                    color: colorNeutral60,
                  ) ??
                  const TextStyle(
                    color: colorNeutral60,
                  ),
              "16일 10:30",
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              style: textTheme.titleLarge?.copyWith(
                    color: colorNeutral20,
                    fontWeight: FontWeight.bold,
                  ) ??
                  const TextStyle(
                    color: colorNeutral20,
                    fontWeight: FontWeight.bold,
                  ),
              "감기약",
            ),
            Text(
              style: textTheme.labelLarge?.copyWith(
                    color: colorNeutral40,
                  ) ??
                  const TextStyle(
                    color: colorNeutral40,
                  ),
              "투약 완료",
            )
          ],
        ))
      ],
    );
  }
}
