import 'package:cropcura_sms_admin/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemSelected;
  final bool compact;

  const Sidebar({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
    this.compact = false,
  });

  final List<_NavItem> _items = const [
    _NavItem(title: 'Dashboard', icon: Icons.dashboard_outlined),
    _NavItem(title: 'Send SMS', icon: Icons.send_outlined),
    _NavItem(title: 'SMS History', icon: Icons.history_outlined),
    _NavItem(title: 'Contacts', icon: Icons.people_outline),
    _NavItem(title: 'Reports', icon: Icons.bar_chart_outlined),
    _NavItem(title: 'Settings', icon: Icons.settings_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: compact ? 88 : 240,
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 14),
      decoration: const BoxDecoration(
        color: AppTheme.surfaceWhite,
        border: Border(right: BorderSide(color: AppTheme.border)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppTheme.lightGreen,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Icon(Icons.agriculture, color: AppTheme.primaryGreen),
              ),
              if (!compact) ...[
                const SizedBox(width: 12),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Crop Cura',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: AppTheme.textPrimary,
                        ),
                      ),
                      Text(
                        'SMS Admin',
                        style: TextStyle(fontSize: 12, color: AppTheme.textSecondary),
                      ),
                    ],
                  ),
                ),
              ],
            ],
          ),
          const SizedBox(height: 24),
          ...List.generate(_items.length, (index) {
            final item = _items[index];
            final isSelected = index == selectedIndex;
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: InkWell(
                onTap: () => onItemSelected(index),
                borderRadius: BorderRadius.circular(14),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 220),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    color: isSelected ? AppTheme.lightGreen : Colors.transparent,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        item.icon,
                        color: isSelected ? AppTheme.primaryGreen : AppTheme.textSecondary,
                      ),
                      if (!compact) ...[
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            item.title,
                            style: TextStyle(
                              color: isSelected ? AppTheme.primaryGreen : AppTheme.textSecondary,
                              fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            );
          }),
          const Spacer(),
          if (!compact)
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppTheme.background,
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Row(
                children: [
                  Icon(Icons.logout, color: AppTheme.textSecondary),
                  SizedBox(width: 10),
                  Text('Logout', style: TextStyle(color: AppTheme.textSecondary)),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class _NavItem {
  final String title;
  final IconData icon;

  const _NavItem({required this.title, required this.icon});
}
