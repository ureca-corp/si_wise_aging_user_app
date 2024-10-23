import 'package:flutter/material.dart';
import 'package:si_wise_aging_user_app/common/components/caption_box/caption_box.dart';

// 투약 페이지 캡션 섹션
class MedicinePageCaptionSection extends StatelessWidget {
  const MedicinePageCaptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CaptionBox(
        child: Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
          ),
          const Column(
            children: [
              Text(
                "ㅁㄴㅇ",
              ),
              Text(
                "ㅁㄴㅇㅁㅇㄴㅁㅇㅁㄴㅇ",
              ),
            ],
          )
        ],
      ),
    ));
  }
}
