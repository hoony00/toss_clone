import 'package:flutter/material.dart';
import 'package:nav/dialog/dialog.dart';

class NotificationDialog extends DialogWidget {
   NotificationDialog({super.key});

  @override
  DialogState<NotificationDialog> createState() => _NotificationDialogState();
}

class _NotificationDialogState extends DialogState<NotificationDialog> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
