import 'package:flutter/material.dart';
import 'package:si_wise_aging_user_app/apps/global/theme/color_cheme.dart';

// 일정 목록 아이템
// (기본 날짜, 타이틀, 내용 구조)
class ScheduleListItem extends StatelessWidget {
  const ScheduleListItem(
      {super.key,
      required this.dateLabel,
      required this.titleLabel,
      required this.contentLabel});

  final String dateLabel;
  final String titleLabel;
  final String contentLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: colorNeutral90,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            dateLabel,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: colorNeutral60,
                    ) ??
                const TextStyle(
                  color: colorNeutral60,
                ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            titleLabel,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: colorNeutral20,
                      fontWeight: FontWeight.bold,
                    ) ??
                const TextStyle(
                  color: colorNeutral20,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            contentLabel,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: colorNeutral40,
                    ) ??
                const TextStyle(
                  color: colorNeutral40,
                ),
          ),
        ],
      ),
    );
  }
}
