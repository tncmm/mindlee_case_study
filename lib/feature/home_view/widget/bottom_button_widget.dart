import 'package:flutter/material.dart';
import 'package:mindlee_case_study/core/extension/context_extension.dart';

class BottomButtonWidget extends StatelessWidget {
  const BottomButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingNormalHorizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: context.colors.background,
                  borderRadius: context.borderRadiusMedium * 1.5),
              child: Padding(
                padding: context.paddingNormalVertical,
                child: const Text(
                  "Günün Şanslı Sayısı",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
          SizedBox(
            width: context.normalValue,
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: context.colors.background,
                borderRadius: context.borderRadiusMedium * 1.5),
            child: Padding(
                padding: context.paddingNormal,
                child: Icon(
                  Icons.edit_document,
                  color: context.colors.onBackground,
                )),
          ),
        ],
      ),
    );
  }
}
