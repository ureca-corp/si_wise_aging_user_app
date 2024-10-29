import 'package:flutter/material.dart';
import 'package:si_wise_aging_user_app/apps/global/components/domain_components/schedule_list_item/schedule_list_item.dart';
import 'package:si_wise_aging_user_app/apps/global/theme/color_cheme.dart';

// 완료된 서명 목록 섹션
class CompletedSignatureSection extends StatelessWidget {
  const CompletedSignatureSection({super.key});

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
            "완료된 서명",
          ),
          const SizedBox(
            height: 16,
          ),
          const ScheduleListItem(
            dateLabel: "2024년 10월 12일까지",
            titleLabel: "제공계획서",
            contentLabel: "제출완료",
          ),
          const SizedBox(
            height: 16,
          ),
          const ScheduleListItem(
            dateLabel: "2024년 10월 12일까지",
            titleLabel: "표준이용계약서",
            contentLabel: "제출완료",
          ),
          const SizedBox(
            height: 16,
          ),
          const ScheduleListItem(
            dateLabel: "2024년 10월 12일까지",
            titleLabel: "갱신계약서",
            contentLabel: "제출완료",
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
