import 'package:flutter/material.dart';
import 'package:si_wise_aging_user_app/apps/global/theme/color_cheme.dart';
import 'package:si_wise_aging_user_app/apps/global/components/domain_components/schedule_list_item/schedule_list_item.dart';

// 대기중인 서명 목록 섹션
class PendingSignatureSection extends StatelessWidget {
  const PendingSignatureSection({super.key});

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
            style: _textStyle(
              fontStyle: textTheme.titleLarge,
              color: colorNeutral20,
              fontWeight: FontWeight.bold,
            ),
            "대기중인 서명",
          ),
          const SizedBox(
            height: 16,
          ),
          const ScheduleListItem(
            dateLabel: "2024년 10월 12일까지",
            titleLabel: "문진표",
            contentLabel: "미제출",
          ),
          const SizedBox(
            height: 16,
          ),
          const ScheduleListItem(
            dateLabel: "2024년 10월 12일까지",
            titleLabel: "표준이용계약서",
            contentLabel: "미제출",
          ),
          const SizedBox(
            height: 16,
          ),
          const ScheduleListItem(
            dateLabel: "2024년 10월 12일까지",
            titleLabel: "제공계획서",
            contentLabel: "미제출",
          ),
        ],
      ),
    );
  }
}

// 텍스트 스타일
TextStyle _textStyle({
  required TextStyle? fontStyle,
  required Color color,
  FontWeight? fontWeight = FontWeight.normal,
}) {
  return fontStyle?.copyWith(
        color: color,
        fontWeight: fontWeight,
      ) ??
      TextStyle(
        color: color,
        fontWeight: fontWeight,
      );
}
