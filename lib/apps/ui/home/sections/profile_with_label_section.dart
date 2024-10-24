import 'package:flutter/material.dart';
import 'package:si_wise_aging_user_app/apps/global/constants/assets.dart';
import 'package:si_wise_aging_user_app/apps/global/theme/color_cheme.dart';

// 프로필 이미지와 라벨이 있는 섹션
class ProfileWithLabelSection extends StatelessWidget {
  const ProfileWithLabelSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Row(
      children: [
        Image.asset(
          Assets.profileImage.path,
          width: 64,
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "홍길동",
              style: textTheme.headlineSmall?.copyWith(
                      color: colorNeutral20, fontWeight: FontWeight.bold) ??
                  const TextStyle(
                      color: colorNeutral20, fontWeight: FontWeight.bold),
            ),
            Text(
              "환영합니다.",
              style: textTheme.bodyLarge?.copyWith(color: colorNeutral60) ??
                  const TextStyle(color: colorNeutral60),
            )
          ],
        )
      ],
    );
  }
}
