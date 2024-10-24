import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:si_wise_aging_user_app/apps/ui/diet_with_schedule/sections/calender.dart';
import 'package:si_wise_aging_user_app/common/components/custom_appbar/custom_appbar.dart';

class DietWithSchedulePage extends ConsumerStatefulWidget {
  const DietWithSchedulePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DietWithSchedulePageState();
}

class _DietWithSchedulePageState extends ConsumerState<DietWithSchedulePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppbar(
          title: "행복주간보호센터",
        ),
        body: Column(
          children: [
            CalenderSection(),
          ],
        ));
  }
}
