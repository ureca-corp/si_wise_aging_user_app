import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:si_wise_aging_user_app/common/components/custom_appbar/custom_appbar.dart';

class SignaturePage extends ConsumerStatefulWidget {
  const SignaturePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignaturePageState();
}

class _SignaturePageState extends ConsumerState<SignaturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        leading: Container(),
        title: "전자서명",
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
