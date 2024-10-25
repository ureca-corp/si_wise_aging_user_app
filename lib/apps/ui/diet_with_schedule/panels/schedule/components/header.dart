import 'package:flutter/material.dart';
import 'package:si_wise_aging_user_app/apps/global/theme/color_cheme.dart';

// 일정 헤더 아이템
class ScheduleHeaderItem extends StatelessWidget {
  const ScheduleHeaderItem({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: colorNeutral95,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        child: Text(
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: colorNeutral40,
                    fontWeight: FontWeight.w500,
                  ) ??
              const TextStyle(
                color: colorNeutral40,
                fontWeight: FontWeight.w500,
              ),
          label,
        ),
      ),
    );
  }
}
