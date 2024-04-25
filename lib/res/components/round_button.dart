import 'package:flutter/material.dart';
import 'package:mvvm/res/app_colors.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({super.key, required this.title, this.loading = false, required this.onPressed});
  final String title;
  final bool loading;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 200,
      decoration: BoxDecoration(
        color: AppColors.button,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Center(child: loading ? const CircularProgressIndicator.adaptive(): Text(title,style: const TextStyle(color: AppColors.white),)),
    );
  }
}
