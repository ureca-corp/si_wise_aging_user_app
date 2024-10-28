import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:si_wise_aging_user_app/apps/global/theme/color_cheme.dart';
import 'package:si_wise_aging_user_app/apps/ui/diet_with_schedule/panels/diet/diet_list.dart';
import 'package:si_wise_aging_user_app/apps/ui/diet_with_schedule/panels/schedule/schedul_list.dart';

import 'package:si_wise_aging_user_app/apps/ui/diet_with_schedule/sections/calender.dart';
import 'package:si_wise_aging_user_app/common/components/custom_appbar/custom_appbar.dart';

class DietWithSchedulePageArgs {
  DietWithSchedulePageArgs({
    required this.tabIndex,
  });

  final int tabIndex;
}

// 식사 및 일정 페이지
class DietWithSchedulePage extends ConsumerStatefulWidget {
  const DietWithSchedulePage({
    super.key,
    this.args,
  });

  final DietWithSchedulePageArgs? args;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DietWithSchedulePageState();
}

class _DietWithSchedulePageState extends ConsumerState<DietWithSchedulePage> {
  @override
  Widget build(BuildContext context) {
    int initialTabIndex = widget.args?.tabIndex ?? 0;

    return DefaultTabController(
      length: 2,
      initialIndex: initialTabIndex,
      child: Scaffold(
        appBar: const CustomAppbar(
          title: "행복주간보호센터",
        ),
        body: Column(
          children: [
            const CalenderSection(),
            Container(
              decoration: const BoxDecoration(
                color: colorPrimary90,
              ),
              child: const TabBar(
                tabs: [
                  Tab(
                    text: "식단",
                  ),
                  Tab(
                    text: "일정표",
                  )
                ],
              ),
            ),
            const Divider(
              height: 1,
              color: colorNeutral90,
            ),
            const Expanded(
              child: TabBarView(
                children: [DietList(), ScheduleList()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
