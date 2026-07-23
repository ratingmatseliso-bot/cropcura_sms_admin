import 'package:cropcura_sms_admin/theme/app_theme.dart';
import 'package:cropcura_sms_admin/widgets/app_header.dart';
import 'package:cropcura_sms_admin/widgets/empty_state.dart';
import 'package:flutter/material.dart';

class SmsHistoryPage extends StatelessWidget {
  const SmsHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppHeader(title: 'SMS History', subtitle: 'View your message activity'),
          const SizedBox(height: 24),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppTheme.surfaceWhite,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: AppTheme.border),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Message records', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: AppTheme.textPrimary)),
                const SizedBox(height: 12),
                const EmptyState(
                  icon: Icons.history_toggle_off,
                  title: 'No SMS records available',
                  message: 'This table will render live records once the backend is connected.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
