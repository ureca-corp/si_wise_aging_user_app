import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:si_wise_aging_user_app/apps/global/theme/color_cheme.dart';
import 'package:si_wise_aging_user_app/common/components/border_box/border_box.dart';

// 영수증 섹션
class ReceiptSection extends ConsumerWidget {
  const ReceiptSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BorderBox(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(
            24,
          ),
          child: Column(
            children: [
              _builderRowLabel(
                context: context,
                leftLabel: "본인부담금",
                rightLabel: "1,986,500원",
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(
                height: 1,
                color: colorNeutral90,
              ),
              const SizedBox(
                height: 16,
              ),
              _builderRowLabel(
                context: context,
                leftLabel: "예금주",
                rightLabel: "신한은행\n12-123456-12-123\n행복주간보호센터",
              ),
              const SizedBox(
                height: 16,
              ),
              _builderRowLabel(
                context: context,
                leftLabel: "납부 기한",
                rightLabel: "2024년 12월 15일 23:59:59까지",
              ),
              const Spacer(),
              const SizedBox(
                height: 16,
              ),
              const Divider(
                height: 1,
                color: colorNeutral90,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: colorNeutral40,
                          ) ??
                      const TextStyle(
                        color: colorNeutral40,
                      ),
                  "청구서의 상세 내역은 기관에 문의해주세요.")
            ],
          ),
        ),
      ),
    );
  }
}

Widget _builderRowLabel({
  required BuildContext context,
  required String leftLabel,
  required String rightLabel,
}) {
  final textTheme = Theme.of(context).textTheme;

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
          style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w500,
                color: colorNeutral40,
              ) ??
              const TextStyle(
                fontWeight: FontWeight.w500,
                color: colorNeutral40,
              ),
          leftLabel),
      Expanded(
        child: Text(
            textAlign: TextAlign.right,
            style: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: colorNeutral40,
                ) ??
                const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: colorNeutral40,
                ),
            rightLabel),
      ),
    ],
  );
}
