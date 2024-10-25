import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:si_wise_aging_user_app/apps/global/components/domain_components/avatar_with_label_caption_item/avatar_with_label_caption_item.dart';
import 'package:si_wise_aging_user_app/apps/global/constants/assets.dart';
import 'package:si_wise_aging_user_app/apps/global/router/router.dart';

// 투약 페이지 캡션 + 캘린더 섹션
class MedicinePageCaptionWithCalenderSection extends ConsumerStatefulWidget {
  const MedicinePageCaptionWithCalenderSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MedicinePageCaptionWithCalenderSectionState();
}

class _MedicinePageCaptionWithCalenderSectionState
    extends ConsumerState<MedicinePageCaptionWithCalenderSection> {
  @override
  Widget build(BuildContext context) {
    void handleOnTapClick() {
      context.push(PageRouters.createMedicationRequest.path);
    }

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          AvatarWithLabelCaptionItem(
            onTap: handleOnTapClick,
            profileAssetsUrl: Assets.profileImage.path,
            title: "홍길동 어르신",
            subTitle: "투약 의뢰서 작성하기",
          ),
          SvgPicture.asset(
            Assets.datePickerImage.path,
          ),
        ],
      ),
    );
  }
}
