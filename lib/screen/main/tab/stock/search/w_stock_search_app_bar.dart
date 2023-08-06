import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/util/app_keyboard_util.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/common/widget/w_text_field_with_delete.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StockSearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TextEditingController controller;

  const StockSearchAppBar({required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: Colors.white, width: 1)),
      child: SafeArea(
        child: SizedBox(
          height: kToolbarHeight,
          child: Row(
            children: [
              Tap(
                  onTap: () => Nav.pop(context),
                  child: const SizedBox(
                    width: 56,
                    height: kToolbarHeight,
                    child: Arrow(
                      direction: AxisDirection.left,
                    ),
                  )),
              Expanded(
                  child: TextFieldWithDelete(
                controller: controller,
                    textInputAction: TextInputAction.search, //키보드 검색으로 변경
                    texthint: "'커피'를 검색해보세요",
                    onEditingComplete: () {  // 검색 후 상황을 따로 처리
                    debugPrint('hi');
                    AppKeyboardUtil.hide(context); //검색 후 키보드 창을 내림
                    },
              ).pOnly(top: 5)),
              width20,
            ],
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
