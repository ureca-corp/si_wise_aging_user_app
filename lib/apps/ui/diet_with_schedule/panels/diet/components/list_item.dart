import 'package:flutter/material.dart';
import 'package:si_wise_aging_user_app/apps/global/theme/color_cheme.dart';

// 식단 리스트 아이템
class DietListItem extends StatelessWidget {
  const DietListItem({
    super.key,
    required this.imageAssetsUrl,
    required this.title,
    required this.menuList,
  });

  final String imageAssetsUrl;
  final String title;

  // 메뉴 목록
  final List<String> menuList;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: colorNeutral90,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(
                16,
              ),
            ),
            child: Image.asset(
              imageAssetsUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(
              16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    style: _textStyle(
                      fontStyle: textTheme.titleMedium,
                      color: colorNeutral20,
                      fontWeight: FontWeight.bold,
                    ),
                    title),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  style: _textStyle(
                    fontStyle: textTheme.labelLarge,
                    color: colorNeutral40,
                    fontWeight: FontWeight.w500,
                  ),
                  menuList.map((menu) => " • $menu").join("\n"),
                )
              ],
            ),
          )
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
