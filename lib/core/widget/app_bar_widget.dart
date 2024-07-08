import 'package:flutter/material.dart';
import 'package:mindlee_case_study/core/extension/context_extension.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final List<Widget>? actionsList;
  final Widget? leadingWidget;
  final Color? textColor;

  const MyAppBar(
      {super.key,
      this.title,
      this.actionsList,
      this.leadingWidget,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingNormalHorizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: context.colors.background,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: context.paddingLow,
              child: Padding(
                padding: context.paddingLowLeft,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: context.colors.onBackground,
                ),
              ),
            ),
          ),
          Text(
            "Günlük Mesaj",
            style: TextStyle(
                color: context.colors.onBackground,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          Container(
            decoration: BoxDecoration(
              color: context.colors.background,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: context.paddingLow,
              child: Icon(
                Icons.menu,
                color: context.colors.onBackground,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
