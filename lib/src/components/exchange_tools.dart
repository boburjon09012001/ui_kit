// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:distr_test/src/components/app_widgets.dart';
import 'package:distr_test/src/utils/assets.gen.dart';
import 'package:distr_test/src/utils/colors.gen.dart';
import 'package:flutter/material.dart';

class ExchangeTools extends StatefulWidget {
  final Color backColor;
  final Color lineColor;
  final TextStyle style;
  final double height;
  final double width;
  final EdgeInsets padding;
  final double borderRadius;
  final Function(String value)? onChanged;
  final Function()? onTap;
  final List<String> textName;
  final List<Color>? textColor;
  final List<Widget> icons;
  const ExchangeTools({
    Key? key,
    this.backColor = ColorName.white,
    this.style = const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    this.height = 154,
    this.width = double.infinity,
    this.padding = const EdgeInsets.only(top: 18, bottom: 18),
    this.borderRadius = 8.0,
    this.onChanged,
    this.onTap,
    this.lineColor = ColorName.gray,
    required this.textName,
    this.textColor,
    required this.icons,
  }) : super(key: key);

  @override
  State<ExchangeTools> createState() => _ExchangeToolsState();
}

class _ExchangeToolsState extends State<ExchangeTools> {
  // final List<String> textName = [
  //   "Планы",
  //   'История',
  //   'Фото отчёт',
  //   'Отказ',
  //   'Возврат \nс полки',
  //   'Возврат \nтары',
  //   'Обмен',
  //   'Остатки',
  // ];
  // final List<Color> textColor = <Color>[
  //   ColorName.primary,
  //   ColorName.primary,
  //   ColorName.primary,
  //   ColorName.primary,
  //   ColorName.primary,
  //   ColorName.primary,
  //   ColorName.primary,
  //   ColorName.primary,
  // ];

  // final List<Widget> icons = [
  //   Assets.icons.pin.svg(),
  //   Assets.icons.history.svg(),
  //   Assets.icons.smartphone.svg(),
  //   Assets.icons.infoCircle.svg(),
  //   Assets.icons.refresh.svg(),
  //   Assets.icons.exchange.svg(),
  //   Assets.icons.box1.svg(),
  //   Assets.icons.box2.svg(),
  // ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: widget.backColor,
        borderRadius: BorderRadius.circular(widget.borderRadius),
      ),
      child: Padding(
        padding: widget.padding,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Items(0),
                  Items(1),
                  Items(2),
                  Items(3),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 14),
              height: 1,
              color: widget.lineColor,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Items(4),
                  Items(5),
                  Items(6),
                  Items(7),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Items(int index) {
    return Column(
      children: [
        widget.icons[index],
        const SizedBox(
          height: 4,
        ),
        AppWidgets.text(
          textAlign: TextAlign.center,
          text: widget.textName[index],
          maxLines: 3,
          textStyle: TextStyle(
            color: widget.textColor != null
                ? widget.textColor![index]
                : ColorName.primary,
            fontSize: widget.style.fontSize,
            fontWeight: widget.style.fontWeight,
          ),
        )
      ],
    );
  }
}
