import 'package:flutter/material.dart';
import 'package:si_wise_aging_user_app/apps/global/theme/color_cheme.dart';
import 'package:si_wise_aging_user_app/apps/global/components/domain_components/schedule_list_item/schedule_list_item.dart';

// 출석 리스트 섹션
class AttendaceListSection extends StatelessWidget {
  const AttendaceListSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.only(
        top: 32,
        left: 16,
        right: 16,
        bottom: 16,
      ),
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
            "11월 미출결 사항",
          ),
          const SizedBox(
            height: 16,
          ),
          const SizedBox(
            width: double.infinity,
            child: ScheduleListItem(
              dateLabel: "16일",
              titleLabel: "통원치료",
              contentLabel: "치매 검사를 위한 병원 통원 치료",
            ),
          )
        ],
      ),
    );
  }
}
