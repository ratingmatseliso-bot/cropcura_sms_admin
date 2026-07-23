import 'package:cropcura_sms_admin/theme/app_theme.dart';
import 'package:cropcura_sms_admin/widgets/app_header.dart';
import 'package:cropcura_sms_admin/widgets/empty_state.dart';
import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppHeader(title: 'Users', subtitle: 'Overview of platform admins and team members'),
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
                    const Expanded(child: Text('Team Directory', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: AppTheme.textPrimary))),
                    OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.person_add_alt_1_outlined), label: const Text('Add User')),
                  ],
                ),
                const SizedBox(height: 12),
                const EmptyState(
                  icon: Icons.group_outlined,
                  title: 'No team members yet',
                  message: 'User and admin records will appear here once the backend is connected.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
