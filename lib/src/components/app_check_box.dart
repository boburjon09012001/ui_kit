// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:distr_test/src/utils/assets.gen.dart';
import 'package:distr_test/src/utils/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:distr_test/src/components/app_widgets.dart';

class AppCheckBox extends StatefulWidget {
  final Function() onTap;
  final bool isCheck;
  final String? text;
  final bool disabled;

  /// used googleFont.inter() width = 500, size = 14px
  final TextStyle? textStyle;
  final double checkBetweenTextSize;
  const AppCheckBox({
    Key? key,
    required this.onTap,
    required this.isCheck,
    this.disabled = false,
    this.checkBetweenTextSize = 10,
    this.text,
    this.textStyle,
  }) : super(key: key);

  @override
  State<AppCheckBox> createState() => _AppCheckBoxState();
}

class _AppCheckBoxState extends State<AppCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: widget.disabled ? null : widget.onTap,
          child: Material(
            color: Colors.transparent,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 100),
              height: 20,
              width: 20,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: ColorName.input,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: widget.disabled
                      ? ColorName.disabledGray1
                      : widget.isCheck
                          ? ColorName.button
                          : ColorName.gray1,
                ),
              ),
              child: widget.isCheck
                  ? Assets.icons.check.svg(
                      height: 7.08,
                      width: 10.42,
                    )
                  : SizedBox.shrink(),
            ),
          ),
        ),
        widget.text == null
            ? SizedBox.shrink()
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(width: widget.checkBetweenTextSize),
                  AppWidgets.text(
                    text: widget.text ?? "",
                    textStyle: widget.textStyle,
                  )
                ],
              ),
      ],
    );
  }
}
