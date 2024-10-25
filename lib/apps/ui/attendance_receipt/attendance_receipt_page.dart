import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:si_wise_aging_user_app/apps/ui/attendance_receipt/sections/attendace_list_section.dart';
import 'package:si_wise_aging_user_app/apps/ui/attendance_receipt/sections/caption_with_calender_section.dart';
import 'package:si_wise_aging_user_app/common/components/custom_appbar/custom_appbar.dart';

// 출석 및 영수중 페이지
class AttendanceReceiptPage extends ConsumerStatefulWidget {
  const AttendanceReceiptPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AttendanceReceiptPageState();
}

class _AttendanceReceiptPageState extends ConsumerState<AttendanceReceiptPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(
        title: "출결 & 비용 납부",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ReceiptCaptionWithCalenderSection(),
            AttendaceListSection()
          ],
        ),
      ),
    );
  }
}
