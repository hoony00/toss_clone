import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/datetime_extension.dart';
import 'package:fast_app_base/common/data/preference/app_preferences.dart';
import 'package:fast_app_base/common/widget/w_big_button.dart';
import 'package:flutter/material.dart';

import '../../../../../common/data/preference/prefs.dart';
import 'w_switch_menu.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: '설정'.text.make(),
      ),
      body: ListView(
        children: [
          Obx(
                () =>
                Switchmenu('푸쉬설정', Prefs.isPushOnRx.get(), onChanged: (isOn) {
                  Prefs.isPushOnRx.set(isOn);
                }),
          ),
          Obx(() =>
              Slider(
                  value: Prefs.sliderPosition.get(),
                  onChanged: (value) {
                    Prefs.sliderPosition.set(value);
                  })),
          Obx( () => BigButton(
              '날짜 ${Prefs.birthday.get() == null ? "" : Prefs.birthday.get()?.formattedDate}',
              onTap: () async {
                final date = await showDatePicker(context: context,
                    initialDate: DateTime.now(), //날짜
                    firstDate: DateTime.now().subtract(90.days), //고를 수 있는 첫 날짜
                    lastDate: DateTime.now().add(90.days));    // 마지막 날짜
                if(date!=null){  //날짜 데이터를 선택한 경우만 작동
                  Prefs.birthday.set(date);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
