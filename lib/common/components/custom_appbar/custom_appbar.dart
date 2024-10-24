import 'package:flutter/material.dart';
import 'package:si_wise_aging_user_app/apps/global/theme/color_cheme.dart';

// 커스텀 앱바
class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    this.leading,
    this.unBackButton = false,
    required this.title,
  });

  final Widget? leading;
  final String title;
  // 백버튼을 표시할 것인지 여부
  final bool unBackButton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // AppBar 기본 백버튼을 자동으로 생성하지 않음
      automaticallyImplyLeading: false,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(
          color: colorNeutral95,
          height: 1,
        ),
      ),
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // 백버튼을 표시할 경우에만 백버튼을 표시
          if (!unBackButton)
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    size: 24,
                    Icons.arrow_back_ios_new_rounded,
                    color: colorNeutral20,
                  ),
                ),
                const SizedBox(
                  width: 16,
                )
              ],
            ),

          //leading이 null이 아닐 경우에만 leading을 보여줌
          if (leading != null)
            Row(
              children: [
                leading!,
                const SizedBox(
                  width: 16,
                ),
              ],
            ),

          Text(
            title,
            style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: colorNeutral20) ??
                const TextStyle(
                  color: colorNeutral20,
                ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
