import 'package:cropcura_sms_admin/theme/app_theme.dart';
import 'package:cropcura_sms_admin/widgets/app_header.dart';
import 'package:cropcura_sms_admin/widgets/empty_state.dart';
import 'package:cropcura_sms_admin/widgets/summary_card.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = screenWidth < 600 ? 1 : screenWidth < 1000 ? 2 : 4;
    final childAspectRatio = screenWidth < 600 ? 1.65 : screenWidth < 1000 ? 1.35 : 2.2;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppHeader(title: 'Dashboard Home', subtitle: 'Overview of your SMS operations'),
          const SizedBox(height: 24),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: childAspectRatio,
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              SummaryCard(title: 'Total SMS', value: '--', icon: Icons.sms_outlined, color: AppTheme.primaryGreen, detail: 'Awaiting API data'),
              SummaryCard(title: 'Delivered', value: '--', icon: Icons.check_circle_outline, color: AppTheme.accentGreen, detail: 'Awaiting API data'),
              SummaryCard(title: 'Failed', value: '--', icon: Icons.error_outline, color: Color(0xFFEF5350), detail: 'Awaiting API data'),
              SummaryCard(title: 'Remaining Balance', value: '--', icon: Icons.account_balance_wallet_outlined, color: Color(0xFFFFA726), detail: 'Awaiting API data'),
            ],
          ),
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
                Row(
                  children: [
                    const Expanded(child: Text('SMS History', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: AppTheme.textPrimary))),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                      label: const Text('Send New SMS'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.primaryGreen,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // TODO: Connect this table to the backend once the SMS history API is available.
                const EmptyState(
                  icon: Icons.inbox_outlined,
                  title: 'No SMS records available',
                  message: 'The history table will populate once live SMS data is available.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
