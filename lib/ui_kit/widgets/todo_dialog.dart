import 'package:flutter/material.dart';

class TodoDialogs {
  static Future<dynamic> showMCDialog({
    required BuildContext context,
    required Widget child,
    bool dismissible = true,
  }) async {
    return showDialog<dynamic>(
      context: context,
      useSafeArea: true,
      barrierColor: Colors.black.withOpacity(0.7),
      barrierDismissible: dismissible,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 10.0,
          ),
          child: child,
        );
      },
    );
  }
}
