import 'package:flutter/material.dart';
import 'package:si_wise_aging_user_app/apps/global/components/domain_components/schedule_list_item/schedule_list_item.dart';
import 'package:si_wise_aging_user_app/apps/global/theme/color_cheme.dart';

// 투약 기록 섹션
class MedicationHistorySection extends StatelessWidget {
  const MedicationHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Padding(
      padding: const EdgeInsets.only(
        top: 32,
        left: 16,
        right: 16,
        bottom: 16,
      ),
      child: SizedBox(
        width: double.infinity,
        child: Column(
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
            const ScheduleListItem(
              dateLabel: "16일 10:30",
              titleLabel: "감기약",
              contentLabel: "투약 완료",
            ),
            const SizedBox(height: 16),
            const ScheduleListItem(
              dateLabel: "16일 10:30",
              titleLabel: "감기약",
              contentLabel: "미투약",
            ),
          ],
        ),
      ),
    );
  }
}
