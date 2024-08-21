import 'package:flutter/material.dart';

Future<void> showDialogUtility(
    BuildContext context, String title, String content) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: SelectableText(title),
      content: SelectableText(content),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const SelectableText('Ok'),
        )
      ],
    ),
  );
}
