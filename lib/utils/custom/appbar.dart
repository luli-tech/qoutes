import 'package:flutter/material.dart';
import 'package:qoute/utils/colors.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final bool showBack;
  final VoidCallback? onBack;
  final VoidCallback? onSettings;

  const CustomAppBar({
    super.key,
    required this.title,
    this.showBack = false,
    this.onBack,
    this.onSettings,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: 70,
      decoration: BoxDecoration(color: AppColors.appBar),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// LEFT SIDE
          showBack
              ? GestureDetector(
                  onTap: onBack ?? () => Navigator.pop(context),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.arrow_back, color: Colors.white),
                  ),
                )
              : SizedBox(width: 40),

          /// TITLE
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          /// RIGHT SIDE
          GestureDetector(
            onTap: onSettings,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.settings, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
