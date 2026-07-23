import 'package:cropcura_sms_admin/theme/app_theme.dart';
import 'package:cropcura_sms_admin/widgets/app_header.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppHeader(title: 'Settings', subtitle: 'Configure profile, notifications and API preferences'),
          const SizedBox(height: 24),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: [
              SizedBox(
                width: 420,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Profile Settings', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: AppTheme.textPrimary)),
                        const SizedBox(height: 16),
                        const TextField(decoration: InputDecoration(labelText: 'Full name')),
                        const SizedBox(height: 12),
                        const TextField(decoration: InputDecoration(labelText: 'Email address')),
                        const SizedBox(height: 12),
                        const TextField(decoration: InputDecoration(labelText: 'Organization')),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 420,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Notification Settings', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: AppTheme.textPrimary)),
                        const SizedBox(height: 16),
                        SwitchListTile(value: true, onChanged: (_) {}, title: const Text('Email alerts')), 
                        SwitchListTile(value: true, onChanged: (_) {}, title: const Text('SMS delivery reports')), 
                        SwitchListTile(value: false, onChanged: (_) {}, title: const Text('Weekly summary emails')), 
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 420,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('API Settings', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: AppTheme.textPrimary)),
                        const SizedBox(height: 16),
                        const Text('Integration placeholder for FastAPI, Supabase, and Africa\'s Talking.', style: TextStyle(color: AppTheme.textSecondary)),
                        const SizedBox(height: 12),
                        const TextField(decoration: InputDecoration(labelText: 'API endpoint')), 
                        const SizedBox(height: 12),
                        const TextField(decoration: InputDecoration(labelText: 'API key')),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
