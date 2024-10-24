import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:si_wise_aging_user_app/apps/global/constants/assets.dart';
import 'package:si_wise_aging_user_app/apps/global/router/router.dart';
import 'package:si_wise_aging_user_app/apps/global/theme/color_cheme.dart';
import 'package:si_wise_aging_user_app/apps/ui/home/components/list_item.dart';
import 'package:si_wise_aging_user_app/common/components/border_box/border_box.dart';

// 홈페이지에서 메뉴 리스트를 보여주는 섹션
class HomePageMenuListSection extends ConsumerStatefulWidget {
  const HomePageMenuListSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _HomePageMenuListSectionState();
}

class _HomePageMenuListSectionState
    extends ConsumerState<HomePageMenuListSection> {
  // go Router 라이브러리를 통한 페이지 이동 동작
  void handleMenuListClick(
    //PageRouters에 정의된 path파라미터를 사용하여 페이지 이동
    String path,
  ) {
    context.push(path);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BorderBox(
          child: HomePageMainListItem(
            onTap: () {},
            label: "24년 인플루엔자(독감) 예방접종",
            startWidget: _buildIcon(
              assetspath: Assets.bellIcon.path,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        BorderBox(
          child: Column(
            children: [
              HomePageMainListItem(
                onTap: () => handleMenuListClick(
                  PageRouters.dietWithSchedule.path,
                ),
                label: "식단",
                startWidget: _buildIcon(
                  assetspath: Assets.dietIcon.path,
                ),
              ),
              _buildDivider(),
              HomePageMainListItem(
                onTap: () {},
                label: "일정표 & 활동 기록",
                startWidget: _buildIcon(
                  assetspath: Assets.scheduleIcon.path,
                ),
              ),
              _buildDivider(),
              HomePageMainListItem(
                onTap: () {},
                label: "출결 & 비용 납부",
                startWidget: _buildIcon(
                  assetspath: Assets.documentIcon.path,
                ),
              ),
              _buildDivider(),
              HomePageMainListItem(
                onTap: () => handleMenuListClick(PageRouters.medication.path),
                label: "투약",
                startWidget: _buildIcon(
                  assetspath: Assets.medicationIcon.path,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        BorderBox(
          child: Column(
            children: [
              HomePageMainListItem(
                onTap: () => handleMenuListClick,
                label: "내 주변 센터",
                startWidget: _buildIcon(
                  assetspath: Assets.infraIcon.path,
                ),
              ),
              _buildDivider(),
              HomePageMainListItem(
                onTap: () => handleMenuListClick,
                label: "치매 정보",
                startWidget: _buildIcon(
                  assetspath: Assets.dementiaIcon.path,
                ),
              ),
              _buildDivider(),
              HomePageMainListItem(
                onTap: () => handleMenuListClick(PageRouters.signature.path),
                label: "전자 서명",
                startWidget: _buildIcon(
                  assetspath: Assets.signatureIcon.path,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget _buildIcon({
  required String assetspath,
}) {
  return Image.asset(
    assetspath,
    width: 32,
    height: 32,
  );
}

Widget _buildDivider() {
  return const Padding(
    padding: EdgeInsets.symmetric(
      horizontal: 16,
    ),
    child: Divider(
      color: colorNeutral95,
      height: 1,
    ),
  );
}
