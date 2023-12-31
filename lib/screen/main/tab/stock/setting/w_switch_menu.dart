import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'w_os_switch.dart';

class Switchmenu extends StatelessWidget {
  final String title;
  final bool isOn;
  final ValueChanged<bool> onChanged;

  const Switchmenu(this.title, this.isOn, {super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        title.text.bold.make(),
        EmptyExpanded(),
        OsSwitch(value: isOn, onChanged: onChanged,),

      ],
    ).p20();
  }
}
