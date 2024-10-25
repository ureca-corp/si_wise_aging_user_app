import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:si_wise_aging_user_app/apps/global/components/domain_components/avatar_with_label_caption_item/avatar_with_label_caption_item.dart';
import 'package:si_wise_aging_user_app/apps/global/constants/assets.dart';
import 'package:si_wise_aging_user_app/apps/global/router/router.dart';

// 영수증 확인 캡션 + 캘린더 섹션
class ReceiptCaptionWithCalenderSection extends ConsumerStatefulWidget {
  const ReceiptCaptionWithCalenderSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ReceiptCaptionWithCalenderSectionState();
}

class _ReceiptCaptionWithCalenderSectionState
    extends ConsumerState<ReceiptCaptionWithCalenderSection> {
  @override
  Widget build(BuildContext context) {
// 영수증 상세 페이지로 이동
    void handleOnTapClick() {
      context.push(PageRouters.receiptDetail.path);
    }

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          AvatarWithLabelCaptionItem(
            onTap: handleOnTapClick,
            profileAssetsUrl: Assets.profileImage.path,
            title: "홍길동 어르신",
            subTitle: "전월 영수증 확인하기",
          ),
          SvgPicture.asset(
            Assets.datePickerImage.path,
          ),
        ],
      ),
    );
  }
}
