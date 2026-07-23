import 'package:cropcura_sms_admin/theme/app_theme.dart';
import 'package:cropcura_sms_admin/widgets/app_header.dart';
import 'package:flutter/material.dart';

class SendSmsPage extends StatelessWidget {
  const SendSmsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppHeader(title: 'Send SMS', subtitle: 'Compose messages for your contacts'),
          const SizedBox(height: 24),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('New SMS', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: AppTheme.textPrimary)),
                  const SizedBox(height: 12),
                  const Text('Recipient phone number', style: TextStyle(color: AppTheme.textSecondary)),
                  const SizedBox(height: 8),
                  TextField(decoration: const InputDecoration(labelText: 'e.g. 254712345678')),
                  const SizedBox(height: 16),
                  const Text('Message', style: TextStyle(color: AppTheme.textSecondary)),
                  const SizedBox(height: 8),
                  TextField(maxLines: 6, decoration: const InputDecoration(labelText: 'Write your message here')),
                  const SizedBox(height: 12),
                  const Row(
                    children: [
                      Text('Character counter placeholder', style: TextStyle(color: AppTheme.textSecondary, fontSize: 12)),
                      Spacer(),
                      Text('0/160', style: TextStyle(color: AppTheme.textSecondary, fontSize: 12)),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: AppTheme.lightGreen,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Text(
                      'SMS service integration pending. This screen will connect to the Africa\'s Talking API later.',
                      style: TextStyle(color: AppTheme.textPrimary),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 180,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.primaryGreen,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      ),
                      child: const Text('Send SMS'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
