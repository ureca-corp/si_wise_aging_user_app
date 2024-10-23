import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:si_wise_aging_user_app/apps/global/constants/assets.dart';
import 'package:si_wise_aging_user_app/apps/global/router/router.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();

    _timer = Timer(
      const Duration(milliseconds: 1000),
      () {
        context.go(PageRouters.home.path);
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          Assets.logoImage.path,
          width: MediaQuery.of(context).size.width * 0.3,
        ),
      ),
    );
  }
}
