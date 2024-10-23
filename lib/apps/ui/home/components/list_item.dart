import 'package:flutter/material.dart';
import 'package:si_wise_aging_user_app/apps/global/theme/color_cheme.dart';

// 홈페이지 메인 리스트 아이템

// 라벨과 스타트 아이콘을 프롭으로 받아서 렌더링
class HomePageMainListItem extends StatelessWidget {
  const HomePageMainListItem({
    super.key,
    required this.label,
    required this.startWidget,
    required this.onTap,
  });

  final String label;
  final Widget startWidget;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            startWidget,
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Text(
                style: const TextStyle(
                  color: colorNeutral20,
                  fontSize: 20,
                ),
                label,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            const Icon(
              color: colorNeutral80,
              Icons.navigate_next_rounded,
              size: 24,
            )
          ],
        ),
      ),
    );
  }
}
