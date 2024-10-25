import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:si_wise_aging_user_app/apps/ui/attendance_receipt/attendance_receipt_page.dart';
import 'package:si_wise_aging_user_app/apps/ui/create_medication_requeset/create_medication_requeset_page.dart';
import 'package:si_wise_aging_user_app/apps/ui/diet_with_schedule/diet_with_schedule_page.dart';
import 'package:si_wise_aging_user_app/apps/ui/home/home_page.dart';
import 'package:si_wise_aging_user_app/apps/ui/medication/medication_page.dart';
import 'package:si_wise_aging_user_app/apps/ui/receipt_detail/receipt_detail_page.dart';
import 'package:si_wise_aging_user_app/apps/ui/signature/signature_page.dart';
import 'package:si_wise_aging_user_app/apps/ui/splash/splash_page.dart';

enum PageRouters {
  splash('/splash'),
  home('/home'),
  dietWithSchedule('/diet_with_schedule'),
  attendanceReceipt('/attendance_receipt'),
  receiptDetail('/receipt_detail'),
  medication('/medication'),
  createMedicationRequest('/create_medication_request'),
  signature('/signature');

  const PageRouters(this.path);

  final String path;
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: PageRouters.splash.path,
    onException: (context, state, router) => router.go(PageRouters.splash.path),
    routes: [
      GoRoute(
        path: PageRouters.splash.path,
        builder: (context, state) => const SplashPage(),
      ),
      //
      GoRoute(
        path: PageRouters.home.path,
        builder: (context, state) => const HomePage(),
      ),
      //
      GoRoute(
        path: PageRouters.dietWithSchedule.path,
        builder: (context, state) {
          final args = state.extra as DietWithSchedulePageArgs;

          return DietWithSchedulePage(
            args: args,
          );
        },
      ),
      //
      GoRoute(
        path: PageRouters.attendanceReceipt.path,
        builder: (context, state) => const AttendanceReceiptPage(),
      ),
      //
      GoRoute(
        path: PageRouters.receiptDetail.path,
        builder: (context, state) => const ReceiptDetailPage(),
      ),
      //
      GoRoute(
        path: PageRouters.medication.path,
        builder: (context, state) => const MedicationPage(),
      ),
      //
      GoRoute(
        path: PageRouters.createMedicationRequest.path,
        builder: (context, state) => const CreateMedicationRequesetPage(),
      ),
      GoRoute(
          path: PageRouters.signature.path,
          builder: (context, state) => const SignaturePage()),
    ]);
