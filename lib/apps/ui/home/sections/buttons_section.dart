import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:si_wise_aging_user_app/apps/global/theme/color_cheme.dart';

// 전화 연결과 실시간 채팅 버튼이 있는 섹션
class CallWithChatButtonsSection extends ConsumerStatefulWidget {
  const CallWithChatButtonsSection({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CallWithChatButtonsSection();
}

class _CallWithChatButtonsSection
    extends ConsumerState<CallWithChatButtonsSection> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Expanded(
          child: _buildButton(
            context: context,
            icon: Icons.call_outlined,
            label: "전화 연결",
            backgroundColor: theme.colorScheme.secondaryContainer,
            foregroundColor: colorPrimary20,
            onPressed: () {},
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _buildButton(
            context: context,
            icon: Icons.chat_outlined,
            label: "실시간 채팅",
            backgroundColor: colorPrimary40,
            foregroundColor: colorPrimary100,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

Widget _buildButton({
  required BuildContext context,
  required IconData icon,
  required String label,
  required Color backgroundColor,
  required Color foregroundColor,
  required VoidCallback onPressed,
}) {
  final theme = Theme.of(context);

  return FilledButton.icon(
    style: FilledButton.styleFrom(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      textStyle: theme.textTheme.labelLarge,
    ),
    onPressed: onPressed,
    icon: Icon(icon, size: 18),
    label: Text(label),
  );
}
