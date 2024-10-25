import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:si_wise_aging_user_app/apps/global/theme/color_cheme.dart';

// 투약 의뢰서 작성 페이지의 텍스트 필드 아이템
class MedicationFormTextFieldItem extends ConsumerStatefulWidget {
  const MedicationFormTextFieldItem({
    super.key,
    required this.label,
    this.placeholderText,
    required this.controller,
  });

  final String label;
  final String? placeholderText;
  final TextEditingController controller;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MedicationFormTextFieldItemState();
}

class _MedicationFormTextFieldItemState
    extends ConsumerState<MedicationFormTextFieldItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: colorNeutral90,
        ),
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              style: const TextStyle(
                fontSize: 12,
                color: colorNeutral20,
              ),
              widget.label,
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              decoration: InputDecoration(
                isDense: true,
                border: InputBorder.none,
                hintText: widget.placeholderText,
                hintStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: colorNeutral70,
                    ),
                contentPadding: EdgeInsets.zero,
              ),
              controller: widget.controller,
            ),
          ],
        ),
      ),
    );
  }
}
