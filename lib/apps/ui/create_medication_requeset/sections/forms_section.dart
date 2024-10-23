import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    return const Column(
      children: [
        Text(
          "ㅁㄴㅇ",
        ),
        SizedBox(
          height: 16,
        ),
        TextField(
          decoration: InputDecoration(
            labelText: "약 이름",
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 32,
        ),
        TextField(
          decoration: InputDecoration(
            labelText: "투약량",
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
