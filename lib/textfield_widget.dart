import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData icon;
  final String label;
  final int? maxLines;
  final bool isDateField;
  final Function()? onTap;
  final String? dateValue;

  const TextFieldWidget({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.icon,
    required this.label,
    this.maxLines = 1,
    this.isDateField = false,
    this.onTap,
    this.dateValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon),
            const SizedBox(width: 8),
            Text(label),
          ],
        ),
        const SizedBox(height: 8),
        if (!isDateField)
          TextField(
            controller: controller,
            maxLines: maxLines,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              contentPadding: maxLines! > 1
                  ? const EdgeInsets.all(16)
                  : const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            ),
          )
        else
          InkWell(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                dateValue ?? '',
              ),
            ),
          ),
      ],
    );
  }
} 