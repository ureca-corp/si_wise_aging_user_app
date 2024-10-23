import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:si_wise_aging_user_app/apps/ui/medication/sections/caption_section.dart';
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
    return Scaffold(
      appBar: CustomAppbar(leading: Container(), title: "투약"),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              MedicinePageCaptionSection(),
              SizedBox(
                height: 16,
              ),
              MedicationHistorySection()
            ],
          ),
        ),
      ),
    );
  }
}
