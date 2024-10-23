import 'package:flutter/material.dart';
import 'package:si_wise_aging_user_app/apps/global/theme/color_cheme.dart';
import 'package:si_wise_aging_user_app/common/components/schedule_list_item/schedule_list_item.dart';

// 대기중인 서명 목록 섹션
class PendingSignatureSection extends StatelessWidget {
  const PendingSignatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: colorNeutral20,
                fontWeight: FontWeight.bold,
              ),
          "대기중인 서명",
        ),
        const SizedBox(
          height: 16,
        ),
        const ScheduleListItem(
          dateLabel: "2021.10.01",
          titleLabel: "홍 어르신",
          contentLabel: "미제출",
        )
      ],
    );
  }
}
