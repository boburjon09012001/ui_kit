// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:distr_test/extensions/app_extensions.dart';
import 'package:distr_test/src/components/app_check_box.dart';
import 'package:distr_test/src/components/app_widgets.dart';
import 'package:distr_test/src/utils/assets.gen.dart';
import 'package:distr_test/src/utils/colors.gen.dart';
import 'package:flutter/material.dart';

class OrderReconciliationActSheet extends StatefulWidget {
  final Color textColor;
  final Color backColor;
  final TextStyle style;
  final TextStyle resetFilterStyle;
  final double height;
  final double width;
  final EdgeInsets padding;
  final double borderRadius;
  final String text;
  final String? resetFilter;
  final Function(String value)? onChanged;
  final Function()? onTap;
  final List<String> itemsName;
  const OrderReconciliationActSheet({
    Key? key,
    this.textColor = ColorName.black,
    this.backColor = ColorName.white,
    this.style = const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
    this.resetFilterStyle = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: ColorName.red,
    ),
    this.resetFilter,
    this.height = 525,
    this.width = double.infinity,
    this.padding =
        const EdgeInsets.only(top: 18, left: 20, right: 20, bottom: 32),
    this.borderRadius = 12,
    this.onChanged,
    this.onTap,
    required this.text,
    required this.itemsName,
  }) : super(key: key);

  @override
  State<OrderReconciliationActSheet> createState() =>
      _OrderReconciliationActSheetState();
}

class _OrderReconciliationActSheetState
    extends State<OrderReconciliationActSheet> {
  // final itemsName = <String>[
  //   "Выбрать все",
  //   "Напитки",
  //   "Печенье",
  //   "Шоколад",
  //   "Шоколад",
  //   "Печенье",
  // ];

  var checks = <bool>[];
  @override
  void initState() {
    checks = List<bool>.filled(widget.itemsName.length, false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
          color: widget.backColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(widget.borderRadius),
            topRight: Radius.circular(widget.borderRadius),
          )),
      child: Padding(
        padding: widget.padding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Assets.icons.down.svg(),
                const SizedBox(
                  width: 137,
                ),
                Assets.icons.cencel.svg(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppWidgets.text(
                  text: widget.text,
                  textStyle: TextStyle(
                    fontSize: widget.style.fontSize,
                    fontWeight: widget.style.fontWeight,
                  ),
                ).marginOnly(top: 18),
                InkWell(
                  onTap: () {
                    print("object");
                    setState(() {
                      checks =
                          List<bool>.filled(widget.itemsName.length, false);
                    });
                  },
                  child: Container(
                    child: AppWidgets.text(
                      text: widget.resetFilter ?? "Сброс фильтра",
                      textStyle: TextStyle(
                        fontSize: widget.resetFilterStyle.fontSize,
                        fontWeight: widget.resetFilterStyle.fontWeight,
                        color: widget.resetFilterStyle.color,
                      ),
                    ).marginOnly(top: 18),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (notification) {
                  notification.disallowIndicator();
                  return false;
                },
                child: ListView.builder(
                  itemCount: widget.itemsName.length,
                  itemBuilder: (context, i) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppCheckBox(
                          onTap: () {
                            setState(() {
                              checks[i] = !checks[i];
                            });
                          },
                          isCheck: checks[i],
                          text: widget.itemsName[i],
                          checkBetweenTextSize: 10,
                          textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 12, bottom: 12),
                          width: widget.width,
                          height: 1,
                          color: ColorName.gray,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            // Button save
          ],
        ),
      ),
    );
  }
}
