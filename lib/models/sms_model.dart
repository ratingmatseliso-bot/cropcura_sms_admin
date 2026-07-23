import 'package:flutter/material.dart';

enum SmsStatus { delivered, pending, failed }

extension SmsStatusText on SmsStatus {
  String get label {
    switch (this) {
      case SmsStatus.delivered:
        return 'Delivered';
      case SmsStatus.pending:
        return 'Pending';
      case SmsStatus.failed:
        return 'Failed';
    }
  }

  Color get color {
    switch (this) {
      case SmsStatus.delivered:
        return const Color(0xFF2E9D67);
      case SmsStatus.pending:
        return const Color(0xFFFFA726);
      case SmsStatus.failed:
        return const Color(0xFFEF5350);
    }
  }
}

class SmsRecord {
  final String recipient;
  final String message;
  final SmsStatus status;
  final String date;
  final String deliveryTime;

  const SmsRecord({
    required this.recipient,
    required this.message,
    required this.status,
    required this.date,
    required this.deliveryTime,
  });
}

class UserRecord {
  final String name;
  final String email;
  final String role;
  final String joinedAt;
  final bool active;

  const UserRecord({
    required this.name,
    required this.email,
    required this.role,
    required this.joinedAt,
    required this.active,
  });
}
