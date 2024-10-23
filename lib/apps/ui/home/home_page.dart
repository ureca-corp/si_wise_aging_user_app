import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:si_wise_aging_user_app/apps/global/constants/assets.dart';
import 'package:si_wise_aging_user_app/apps/ui/home/sections/buttons_section.dart';
import 'package:si_wise_aging_user_app/apps/ui/home/sections/menu_list_section.dart';
import 'package:si_wise_aging_user_app/apps/ui/home/sections/profile_with_label_section.dart';
import 'package:si_wise_aging_user_app/common/components/custom_appbar/custom_appbar.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        leading: SvgPicture.asset(
          Assets.logoIcon.path,
          width: 36,
          height: 22,
        ),
        title: "행복주간보호센터",
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: const Column(
            children: [
              ProfileWithLabelSection(),
              SizedBox(
                height: 16,
              ),
              CallWithChatButtonsSection(),
              SizedBox(
                height: 32,
              ),
              HomePageMenuListSection()
            ],
          ),
        ),
      ),
    );
  }
}
