import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:si_wise_aging_user_app/apps/global/constants/assets.dart';
import 'package:si_wise_aging_user_app/apps/global/theme/color_cheme.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  Assets.logoIcon.path,
                  width: 24,
                  height: 24,
                )),
            const SizedBox(width: 16),
            const Text("제목 들어갈 자리"),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    decoration: const BoxDecoration(
                      color: Colors.pink,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "홍길동",
                        // 색상은 colorNeutral900, 폰트는 headlineSmall
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(
                                color: colorNeutral20,
                                fontWeight: FontWeight.bold),
                      ),
                      const Text(
                          style: TextStyle(fontSize: 24, color: colorNeutral60),
                          "환영합니다.")
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
