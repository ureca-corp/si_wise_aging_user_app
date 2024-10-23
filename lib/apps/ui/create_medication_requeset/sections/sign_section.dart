import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:si_wise_aging_user_app/apps/global/theme/color_cheme.dart';

// 투약 의뢰서 작성 페이지의 서명 섹션
class MedicationSignSection extends ConsumerStatefulWidget {
  const MedicationSignSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MedicationSignSectionState();
}

class _MedicationSignSectionState extends ConsumerState<MedicationSignSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "투약 의뢰 책임 서명",
        ),
        const SizedBox(
          height: 16,
        ),
        FilledButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.abc_rounded),
          label: const Text(
            "서명 초기화 하기",
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(
              color: colorNeutral90,
            ),
            color: colorNeutral95,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(
              "여기에 서명해주세요.",
              style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: colorNaturalVariant60) ??
                  const TextStyle(
                    color: colorNaturalVariant60,
                  ),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        FilledButton(
          onPressed: () {},
          child: const Text(
            "작성 완료",
          ),
        ),
      ],
    );
  }
}
