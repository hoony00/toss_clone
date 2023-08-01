import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class TtossAppBar extends StatefulWidget {
  const TtossAppBar({super.key});

  @override
  State<TtossAppBar> createState() => _TtossAppBarState();
}

class _TtossAppBarState extends State<TtossAppBar> {
  bool _showRedDot = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: context.appColors.appBarBackground,
      child: Row(
        children: [
          width10,
          Image.asset(
            '$basePath/icon/toss.png',
            height: 30,
          ),
          EmptyExpanded(),
          //Expanded(child: Container()),// 빈공간 다 사용
          Image.asset(
            '$basePath/icon/map_point.png',
            height: 30,
          ),
          width10,
          Tap(
            onTap: (){
              setState(() {
                _showRedDot = !_showRedDot;
              });
            },
            child: Stack( // 종과 빨간점을 스택으로 쌓아서 겹치게끔 보이게 해야됌
              children: [
                Image.asset(
                  '$basePath/icon/notification.png',
                  height: 30,
                ),
                if(_showRedDot) Positioned.fill(child: Align(alignment: Alignment.topRight,
                child: Container(
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                ),
                )),
              ],
            ),
          ),
          width10,
        ],
      ),
    );
  }
}
