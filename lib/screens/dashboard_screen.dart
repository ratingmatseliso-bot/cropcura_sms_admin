import 'package:cropcura_sms_admin/screens/contacts.dart';
import 'package:cropcura_sms_admin/screens/dashboard.dart';
import 'package:cropcura_sms_admin/screens/reports.dart';
import 'package:cropcura_sms_admin/screens/send_sms.dart';
import 'package:cropcura_sms_admin/screens/settings.dart';
import 'package:cropcura_sms_admin/screens/sms_history.dart';
import 'package:cropcura_sms_admin/theme/app_theme.dart';
import 'package:cropcura_sms_admin/widgets/sidebar.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  final List<_NavItem> _navItems = const [
    _NavItem(title: 'Dashboard', icon: Icons.dashboard_outlined),
    _NavItem(title: 'Send SMS', icon: Icons.send_outlined),
    _NavItem(title: 'SMS History', icon: Icons.history_outlined),
    _NavItem(title: 'Contacts', icon: Icons.people_outline),
    _NavItem(title: 'Reports', icon: Icons.bar_chart_outlined),
    _NavItem(title: 'Settings', icon: Icons.settings_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    final screens = [
      const DashboardPage(),
      const SendSmsPage(),
      const SmsHistoryPage(),
      const ContactsPage(),
      const ReportsPage(),
      const SettingsPage(),
    ];
    final isWideScreen = MediaQuery.of(context).size.width >= 900;

    return Scaffold(
      appBar: isWideScreen
          ? null
          : AppBar(
              backgroundColor: AppTheme.surfaceWhite,
              elevation: 0,
              title: const Text('Crop Cura Admin', style: TextStyle(color: AppTheme.textPrimary)),
              iconTheme: const IconThemeData(color: AppTheme.textPrimary),
            ),
      drawer: isWideScreen ? null : _buildDrawer(),
      body: isWideScreen
          ? Row(
              children: [
                Sidebar(
                  selectedIndex: _selectedIndex,
                  compact: false,
                  onItemSelected: (index) => setState(() => _selectedIndex = index),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: screens[_selectedIndex],
                  ),
                ),
              ],
            )
          : SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: screens[_selectedIndex],
              ),
            ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppTheme.lightGreen,
                child: Icon(Icons.agriculture, color: AppTheme.primaryGreen),
              ),
              title: const Text('Crop Cura', style: TextStyle(fontWeight: FontWeight.w700)),
              subtitle: const Text('SMS Admin'),
            ),
            const SizedBox(height: 8),
            ...List.generate(_navItems.length, (index) {
              final item = _navItems[index];
              final isSelected = index == _selectedIndex;
              return ListTile(
                leading: Icon(item.icon, color: isSelected ? AppTheme.primaryGreen : AppTheme.textSecondary),
                title: Text(item.title, style: TextStyle(color: isSelected ? AppTheme.primaryGreen : AppTheme.textPrimary, fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500)),
                tileColor: isSelected ? AppTheme.lightGreen : null,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                onTap: () {
                  setState(() => _selectedIndex = index);
                  Navigator.pop(context);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}

class _NavItem {
  const _NavItem({required this.title, required this.icon});

  final String title;
  final IconData icon;
}
