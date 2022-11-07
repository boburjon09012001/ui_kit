// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:distr_test/extensions/app_extensions.dart';
import 'package:distr_test/src/components/app_widgets.dart';
import 'package:distr_test/src/utils/assets.gen.dart';
import 'package:distr_test/src/utils/colors.gen.dart';
import 'package:flutter/material.dart';

class AddingAnOrderSheet extends StatefulWidget {
  final Color textColor;
  final Color backColor;
  final TextStyle style;
  final TextStyle textListStyle;
  final TextStyle seeTextListStyle;
  final double height;
  final double width;
  final EdgeInsets padding;
  final double borderRadius;
  final String text;
  final List<String> listTextName;
  final List<String> seeListTextName;
  final List<Color>? listTextColor;
  final List<Color>? seeListTextColor;
  final List<Widget> icons;
  final Function(String value)? onChanged;
  final Function()? onTap;
  const AddingAnOrderSheet({
    Key? key,
    this.textColor = ColorName.black,
    this.backColor = ColorName.white,
    this.style = const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
    this.textListStyle = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: ColorName.gray2,
    ),
    this.seeTextListStyle = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: ColorName.black,
      overflow: TextOverflow.ellipsis,
    ),
    this.height = 389,
    this.width = double.infinity,
    this.padding =
        const EdgeInsets.only(top: 18, left: 20, right: 20, bottom: 32),
    this.borderRadius = 12,
    this.onChanged,
    this.onTap,
    required this.text,
    required this.listTextName,
    required this.seeListTextName,
    this.listTextColor,
    this.seeListTextColor,
    required this.icons,
  }) : super(key: key);

  @override
  State<AddingAnOrderSheet> createState() => _AddingAnOrderSheetState();
}

class _AddingAnOrderSheetState extends State<AddingAnOrderSheet> {
  // final listTextName = <String>[
  //   "Склад",
  //   "Тип направления",
  //   "Тип цены",
  //
  // ];
  // final seeListTextName = <String>
  //   "Основной склад",
  //   "Направление..",
  //   "Наличные",
  // ];

  // final List<Widget> icons = [
  //   Assets.icons.stack.svg(),
  //   Assets.icons.shoppingCart.svg(),
  //   Assets.icons.card.svg(),
  // ];

  var checks = <bool>[];
  @override
  void initState() {
    checks = List<bool>.filled(widget.listTextName.length, false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
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
            AppWidgets.text(
              text: widget.text,
              textStyle: TextStyle(
                fontSize: widget.style.fontSize,
                fontWeight: widget.style.fontWeight,
              ),
            ).marginOnly(top: 18),
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (notification) {
                  notification.disallowIndicator();
                  return false;
                },
                child: ListView.separated(
                  itemCount: widget.listTextName.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 24),
                  itemBuilder: (context, i) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          CircleAvatar(
                            maxRadius: 21,
                            child: widget.icons[i],
                            backgroundColor: ColorName.background,
                          ),
                          const SizedBox(width: 18),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    AppWidgets.text(
                                      text: widget.listTextName[i],
                                      textStyle: TextStyle(
                                        fontSize: widget.textListStyle.fontSize,
                                        fontWeight:
                                            widget.textListStyle.fontWeight,
                                        color: widget.textListStyle.color,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: (w - 100) / 2 - 20,
                                          alignment: Alignment.centerRight,
                                          child: AppWidgets.text(
                                            text: widget.seeListTextName[i],
                                            maxLines: 1,
                                            textStyle: TextStyle(
                                              fontSize: widget
                                                  .seeTextListStyle.fontSize,
                                              fontWeight: widget
                                                  .seeTextListStyle.fontWeight,
                                              color:
                                                  widget.seeTextListStyle.color,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ),
                                        Assets.icons.right.svg(),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 8),
                                  width: widget.width,
                                  height: 1,
                                  color: ColorName.gray,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                // First Button
                SizedBox(width: 12),
                // First Icon
              ],
            ),
          ],
        ),
      ),
    );
  }
}
