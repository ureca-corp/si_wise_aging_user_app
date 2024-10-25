import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:si_wise_aging_user_app/apps/ui/signature/sections/completed_section.dart';
import 'package:si_wise_aging_user_app/apps/ui/signature/sections/pending_section.dart';
import 'package:si_wise_aging_user_app/common/components/custom_appbar/custom_appbar.dart';

class SignaturePage extends ConsumerStatefulWidget {
  const SignaturePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignaturePageState();
}

class _SignaturePageState extends ConsumerState<SignaturePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(
        title: "전자서명",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [PendingSignatureSection(), CompletedSignatureSection()],
        ),
      ),
    );
  }
}
