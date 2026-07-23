import 'package:cropcura_sms_admin/theme/app_theme.dart';
import 'package:cropcura_sms_admin/widgets/app_header.dart';
import 'package:cropcura_sms_admin/widgets/empty_state.dart';
import 'package:flutter/material.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppHeader(title: 'Reports', subtitle: 'Delivery and usage summaries'),
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
                const Text('Reporting dashboard', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: AppTheme.textPrimary)),
                const SizedBox(height: 12),
                const Text('Date filter placeholder', style: TextStyle(color: AppTheme.textSecondary)),
                const SizedBox(height: 12),
                const EmptyState(
                  icon: Icons.insights_outlined,
                  title: 'No report data yet',
                  message: 'Charts and report summaries will appear once backend metrics are connected.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
