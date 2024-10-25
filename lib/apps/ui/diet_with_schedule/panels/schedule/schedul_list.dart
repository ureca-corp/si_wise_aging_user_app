import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:si_wise_aging_user_app/apps/global/components/domain_components/schedule_list_item/schedule_list_item.dart';
import 'package:si_wise_aging_user_app/apps/ui/diet_with_schedule/panels/schedule/components/header.dart';

// 일정 리스트
class ScheduleList extends ConsumerWidget {
  const ScheduleList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ScheduleHeaderItem(
            label: "오전",
          ),
          _builderPadding(
            child: const Column(
              children: [
                ScheduleListItem(
                  dateLabel: "10시 ~ 11시",
                  titleLabel: "치매예방훈련",
                  contentLabel: "과거 회상을 통해 인지 기능을 향상합니다.",
                ),
                SizedBox(
                  height: 16,
                ),
                ScheduleListItem(
                  dateLabel: "10시 ~ 11시",
                  titleLabel: "치매예방훈련",
                  contentLabel: "과거 회상을 통해 인지 기능을 향상합니다.",
                ),
              ],
            ),
          ),
          const ScheduleHeaderItem(
            label: "오후",
          ),
          _builderPadding(
            child: const Column(
              children: [
                ScheduleListItem(
                  dateLabel: "10시 ~ 11시",
                  titleLabel: "치매예방훈련",
                  contentLabel: "과거 회상을 통해 인지 기능을 향상합니다.",
                ),
                SizedBox(
                  height: 16,
                ),
                ScheduleListItem(
                  dateLabel: "10시 ~ 11시",
                  titleLabel: "치매예방훈련",
                  contentLabel: "과거 회상을 통해 인지 기능을 향상합니다.",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _builderPadding({
  required Widget child,
}) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 32,
      left: 16,
      right: 16,
      bottom: 16,
    ),
    child: child,
  );
}
