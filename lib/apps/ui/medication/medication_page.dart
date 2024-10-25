import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:si_wise_aging_user_app/apps/ui/medication/sections/caption_with_calender.dart';
import 'package:si_wise_aging_user_app/apps/ui/medication/sections/history_section.dart';
import 'package:si_wise_aging_user_app/common/components/custom_appbar/custom_appbar.dart';

// 투약 페이지
class MedicationPage extends ConsumerStatefulWidget {
  const MedicationPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MedicationPageState();
}

class _MedicationPageState extends ConsumerState<MedicationPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(title: "투약"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MedicinePageCaptionWithCalenderSection(),
            MedicationHistorySection()
          ],
        ),
      ),
    );
  }
}
