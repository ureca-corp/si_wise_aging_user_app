import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:si_wise_aging_user_app/apps/global/constants/assets.dart';
import 'package:si_wise_aging_user_app/apps/global/theme/color_cheme.dart';

// 캘린더 섹션
class CalenderSection extends ConsumerStatefulWidget {
  const CalenderSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CalenderSectionState();
}

class _CalenderSectionState extends ConsumerState<CalenderSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(
            16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                Assets.dateIcon.path,
                width: 20,
              ),
              const Text(
                "2023년 4월",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(
                    0xFF606060,
                  ),
                ),
              ),
              SvgPicture.asset(
                Assets.arrowDownIcon.path,
                width: 12,
              ),
            ],
          ),
        ),
        _buildDivider(),
        Row(
          children: [
            _buildCalenderItem(
              weekday: "월",
              dateNumber: 11,
            ),
            _buildCalenderItem(
              weekday: "화",
              dateNumber: 12,
            ),
            _buildCalenderItem(
              weekday: "수",
              dateNumber: 13,
            ),
            _buildCalenderItem(
              isActived: true,
              weekday: "목",
              dateNumber: 14,
            ),
            _buildCalenderItem(
              weekday: "금",
              dateNumber: 15,
            ),
            _buildCalenderItem(
              weekday: "토",
              dateNumber: 16,
            ),
            _buildCalenderItem(
              weekday: "일",
              dateNumber: 17,
            ),
          ],
        ),
        _buildDivider(),
      ],
    );
  }
}

Widget _buildDivider() {
  return const Divider(
    color: colorNeutral95,
    height: 1,
  );
}

// 캘린더 아이템
Widget _buildCalenderItem({
  required String weekday,
  required int dateNumber,
  bool isActived = false,
}) {
  // 주일 글자 스타일
  const weekdayStyle = TextStyle(
    fontSize: 14,
    color: colorNeutral60,
  );

  // 날짜 스타일
  final dateStyle = TextStyle(
    fontSize: 16,
    color: isActived ? colorPrimary100 : colorNeutral20,
  );

  return Expanded(
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            weekday,
            style: weekdayStyle,
          ),
          const SizedBox(height: 10),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: isActived ? colorPrimary40 : Colors.transparent,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                dateNumber.toString(),
                style: dateStyle,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
