import 'package:flutter/material.dart';
import 'package:si_wise_aging_user_app/apps/global/theme/color_cheme.dart';
import 'package:si_wise_aging_user_app/common/components/caption_box/caption_box.dart';

// 프로필 이미지와 라벨 캡션 아이템
class AvatarWithLabelCaptionItem extends StatelessWidget {
  const AvatarWithLabelCaptionItem({
    super.key,
    required this.onTap,
    required this.profileAssetsUrl,
    required this.title,
    required this.subTitle,
  });

  final VoidCallback onTap;
  final String profileAssetsUrl;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: onTap,
      child: CaptionBox(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Row(
            children: [
              Image.asset(
                profileAssetsUrl,
                width: 64,
                height: 64,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    style: _textStyle(
                      fontStyle: textTheme.titleMedium,
                      color: colorSecondary40,
                    ),
                    title,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    style: _textStyle(
                      fontStyle: textTheme.titleLarge,
                      color: colorSecondary20,
                      fontWeight: FontWeight.bold,
                    ),
                    subTitle,
                  ),
                ],
              )
            ],
          ),
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
