import 'package:flutter/material.dart';
import 'package:si_wise_aging_user_app/apps/global/theme/color_cheme.dart';

// 커스텀 앱바
class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    required this.leading,
    required this.title,
  });

  final Widget leading;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          leading,
          const SizedBox(
            width: 16,
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
