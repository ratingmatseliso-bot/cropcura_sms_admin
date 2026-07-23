import 'package:cropcura_sms_admin/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomTable extends StatelessWidget {
  final List<String> columns;
  final List<Widget> rows;

  const CustomTable({super.key, required this.columns, required this.rows});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.surfaceWhite,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppTheme.border),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              children: columns.map((column) => Expanded(child: Text(column, style: const TextStyle(fontWeight: FontWeight.w700, color: AppTheme.textPrimary)))).toList(),
            ),
          ),
          const Divider(height: 1, color: AppTheme.border),
          ...rows,
        ],
      ),
    );
  }
}
