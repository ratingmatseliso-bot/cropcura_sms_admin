import 'package:cropcura_sms_admin/theme/app_theme.dart';
import 'package:cropcura_sms_admin/widgets/app_header.dart';
import 'package:cropcura_sms_admin/widgets/empty_state.dart';
import 'package:flutter/material.dart';

class SmsHistoryScreen extends StatelessWidget {
  const SmsHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppHeader(title: 'SMS History', subtitle: 'Review sent messages and delivery outcomes'),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppTheme.surfaceWhite,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: AppTheme.border),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const Expanded(child: Text('Recent Activity', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: AppTheme.textPrimary))),
                    OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.filter_list), label: const Text('Filter')),
                  ],
                ),
                const SizedBox(height: 12),
                const EmptyState(
                  icon: Icons.inbox_outlined,
                  title: 'No SMS activity yet',
                  message: 'Message history will appear here once the backend is connected.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
