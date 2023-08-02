import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class TtospayFragment extends StatefulWidget {
  const TtospayFragment({super.key});

  @override
  State<TtospayFragment> createState() => _TtospayFragmentState();
}

class _TtospayFragmentState extends State<TtospayFragment> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "hi".text.size(40).make(),
        width5,
        "hi22".text.size(40).make(),
      ],
    );
  }
}
