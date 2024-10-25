import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:si_wise_aging_user_app/apps/global/constants/assets.dart';
import 'package:si_wise_aging_user_app/apps/ui/diet_with_schedule/panels/diet/components/list_item.dart';

// 식단 리스트
class DietList extends ConsumerWidget {
  const DietList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 32,
          left: 16,
          right: 16,
          bottom: 16,
        ),
        child: Column(
          children: [
            DietListItem(
              imageAssetsUrl: Assets.lunchImage.path,
              title: "점심식단",
              menuList: const ["밥", "국", "김치"],
            ),
            const SizedBox(
              height: 16,
            ),
            DietListItem(
              imageAssetsUrl: Assets.dinnerImage.path,
              title: "저녁식단",
              menuList: const ["밥", "국", "김치"],
            ),
          ],
        ),
      ),
    );
  }
}
