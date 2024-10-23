import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:si_wise_aging_user_app/common/components/custom_appbar/custom_appbar.dart';

class DietPage extends ConsumerStatefulWidget {
  const DietPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DietPageState();
}

class _DietPageState extends ConsumerState<DietPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        leading: Container(),
        title: "행복주간보호센터",
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
