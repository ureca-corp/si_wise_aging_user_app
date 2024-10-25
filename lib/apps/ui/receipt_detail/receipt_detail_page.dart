import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:si_wise_aging_user_app/apps/global/theme/color_cheme.dart';
import 'package:si_wise_aging_user_app/apps/ui/receipt_detail/sections/receipt_section.dart';
import 'package:si_wise_aging_user_app/common/components/custom_appbar/custom_appbar.dart';

// 영수증 상세 페이지
class ReceiptDetailPage extends ConsumerStatefulWidget {
  const ReceiptDetailPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ReceiptDetailPageState();
}

class _ReceiptDetailPageState extends ConsumerState<ReceiptDetailPage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: const CustomAppbar(
        title: "영수증",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              style: _textStyle(
                fontStyle: textTheme.titleLarge,
                color: colorNeutral40,
              ),
              "행복주간보호센터",
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              style: _textStyle(
                fontStyle: textTheme.headlineMedium,
                color: colorNeutral20,
                fontWeight: FontWeight.bold,
              ),
              "홍길동 님의 10월 영수증",
            ),
            const SizedBox(
              height: 32,
            ),
            const Expanded(child: ReceiptSection()),
          ],
        ),
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
