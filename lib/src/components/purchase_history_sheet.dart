// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:distr_test/extensions/app_extensions.dart';
import 'package:distr_test/src/components/app_widgets.dart';
import 'package:distr_test/src/utils/assets.gen.dart';
import 'package:distr_test/src/utils/colors.gen.dart';
import 'package:flutter/material.dart';

class PurchaseHistorySheet extends StatefulWidget {
  final Color backColor;
  final TextStyle style;
  final double height;
  final double width;
  final EdgeInsets padding;
  final double borderRadius;
  final String text;
  final String? resetFilter;
  final TextStyle resetFilterStyle;

  final String? fromDate;
  final String? toDate;
  final String? costText;
  final Color dateBorderColor;
  final String firstDate;
  final Function()? firstDateOnTap;
  final String firstMoneyStatus;
  final TextStyle firstDateTextStyle;
  final String secondDate;
  final Function()? secondDateOnTap;
  final TextStyle secondDateTextStyle;
  final Function()? firstMoneyStatusOnTap;
  final TextStyle firstMoneyStatusTextStyle;
  final String secondMoneyStatus;
  final Function()? secondMoneyStatusOnTap;
  final TextStyle secondMoneyStatusTextStyle;
  final Function(String value)? onChanged;
  final Function()? onTap;

  const PurchaseHistorySheet({
    Key? key,
    this.dateBorderColor = ColorName.gray,
    this.firstDate = "20.09.2022",
    this.firstDateOnTap,
    this.firstDateTextStyle = const TextStyle(
        fontSize: 14, fontWeight: FontWeight.w400, color: ColorName.black),
    this.secondDate = "20.09.2022",
    this.fromDate,
    this.toDate,
    this.secondDateOnTap,
    this.secondDateTextStyle = const TextStyle(
        fontSize: 14, fontWeight: FontWeight.w400, color: ColorName.black),
    this.firstMoneyStatus = "100 000 000",
    this.firstMoneyStatusOnTap,
    this.firstMoneyStatusTextStyle = const TextStyle(
        fontSize: 14, fontWeight: FontWeight.w400, color: ColorName.black),
    this.secondMoneyStatus = "200 000 000",
    this.secondMoneyStatusOnTap,
    this.secondMoneyStatusTextStyle = const TextStyle(
        fontSize: 14, fontWeight: FontWeight.w400, color: ColorName.black),
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
    this.costText,
  }) : super(key: key);

  @override
  State<PurchaseHistorySheet> createState() => _PurchaseHistorySheetState();
}

class _PurchaseHistorySheetState extends State<PurchaseHistorySheet> {
  RangeValues _currentRangeValues = const RangeValues(40, 80);
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
                      // checks = List<bool>.filled(list.length, false);
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
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppWidgets.text(
                      text: widget.fromDate == null
                          ? "Выберите дату"
                          : widget.fromDate.toString(),
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    AppWidgets.text(
                      text: widget.toDate == null
                          ? "Текущий месяц"
                          : widget.toDate.toString(),
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  height: 44,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    // color: dateBackColor,
                    border: Border.all(
                      color: widget.dateBorderColor,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      datePanel(
                        widget.firstDate,
                        Assets.icons.calendar.svg(color: ColorName.gray2),
                        widget.firstDateOnTap,
                        dateStyle: widget.firstDateTextStyle,
                      ),
                      Container(
                        width: 1,
                        color: widget.dateBorderColor,
                      ),
                      datePanel(
                        widget.secondDate,
                        Assets.icons.calendar.svg(color: ColorName.gray2),
                        widget.secondDateOnTap,
                        dateStyle: widget.secondDateTextStyle,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: AppWidgets.text(
                    text: widget.costText == null
                        ? "Сумма заказа"
                        : widget.costText.toString(),
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  height: 44,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    // color: dateBackColor,
                    border: Border.all(
                      color: widget.dateBorderColor,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      datePanel(
                        widget.firstDate,
                        const SizedBox.shrink(),
                        widget.firstDateOnTap,
                        dateStyle: widget.firstDateTextStyle,
                      ),
                      Container(
                        width: 1,
                        color: widget.dateBorderColor,
                      ),
                      datePanel(
                        widget.secondDate,
                        const SizedBox.shrink(),
                        widget.secondDateOnTap,
                        dateStyle: widget.secondDateTextStyle,
                      ),
                    ],
                  ),
                ),

                // SLIDER RANGE
                const SizedBox(
                  height: 18,
                ),
                Container(
                  width: widget.width,
                  child: Theme(
                    data: ThemeData(
                        sliderTheme: const SliderThemeData(
                      trackHeight: 10,
                    ).copyWith(overlayShape: SliderComponentShape.noOverlay)),
                    child: RangeSlider(
                      values: _currentRangeValues,
                      max: 100,
                      labels: RangeLabels(
                        _currentRangeValues.start.round().toString(),
                        _currentRangeValues.end.round().toString(),
                      ),
                      onChanged: (RangeValues values) {
                        setState(() {
                          _currentRangeValues = values;
                        });
                      },
                      activeColor: ColorName.main,
                      inactiveColor: ColorName.background,
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.only(top: 24),
                width: double.infinity,
                // height: widget.heightButton,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  // color: widget.saveButtonBackColor,
                ),
                child: Text(
                  "Сохранить",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: widget.style.fontWeight,
                      color: ColorName.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget datePanel(String text, Widget assetImage, Function()? onTap,
      {TextStyle? dateStyle}) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: assetImage,
            ),
            Expanded(
              child: AppWidgets.text(
                text: text,
                maxLines: 1,
                textStyle: dateStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
