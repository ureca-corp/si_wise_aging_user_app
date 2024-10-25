import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:si_wise_aging_user_app/apps/global/theme/color_cheme.dart';
import 'package:si_wise_aging_user_app/apps/ui/create_medication_requeset/components/text_field_item.dart';

// 투약 의뢰서 작성 페이지의 투약 정보 입력 폼 섹션
class MedicationFormsSection extends ConsumerStatefulWidget {
  const MedicationFormsSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MedicationFormsSectionState();
}

class _MedicationFormsSectionState
    extends ConsumerState<MedicationFormsSection> {
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
            "증상",
          ),
          //
          //
          const SizedBox(
            height: 16,
          ),
          MedicationFormTextFieldItem(
            label: "증상",
            placeholderText: "증상을 입력해주세요.",
            controller: TextEditingController(),
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            style: _textStyle(
              fontStyle: textTheme.titleLarge,
              color: colorNeutral20,
              fontWeight: FontWeight.bold,
            ),
            "투약 내용",
          ),
          const SizedBox(
            height: 16,
          ),
          //
          //
          MedicationFormTextFieldItem(
            label: "약의 종류",
            placeholderText: "약의 종류를 입력해주세요.",
            controller: TextEditingController(),
          ),
          const SizedBox(
            height: 16,
          ),
          //
          MedicationFormTextFieldItem(
            label: "투약 용량",
            placeholderText: "투약 용량을 입력해주세요.",
            controller: TextEditingController(),
          ),
          const SizedBox(
            height: 16,
          ),
          //
          MedicationFormTextFieldItem(
            label: "투약 기간",
            placeholderText: "투약 기간을 입력해주세요.",
            controller: TextEditingController(),
          ),
          const SizedBox(
            height: 16,
          ),
          //
          MedicationFormTextFieldItem(
            label: "투약 횟수 (회)",
            placeholderText: "투약 횟수를 입력해주세요.",
            controller: TextEditingController(),
          ),
          const SizedBox(
            height: 16,
          ),
          //
          MedicationFormTextFieldItem(
            label: "투약 시간",
            placeholderText: "투약 시간을 입력해주세요.",
            controller: TextEditingController(),
          ),
          const SizedBox(
            height: 16,
          ),
          //
          MedicationFormTextFieldItem(
            label: "보관 방법",
            placeholderText: "보관 방법을 입력해주세요.",
            controller: TextEditingController(),
          ),
          const SizedBox(
            height: 16,
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
