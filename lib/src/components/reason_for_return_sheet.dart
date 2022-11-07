import 'package:distr_test/extensions/app_extensions.dart';
import 'package:distr_test/src/components/app_check_box.dart';
import 'package:distr_test/src/components/app_widgets.dart';
import 'package:distr_test/src/utils/assets.gen.dart';
import 'package:distr_test/src/utils/colors.gen.dart';
import 'package:flutter/material.dart';

class ReasomnForReturnSheet extends StatefulWidget {
  final Color backColor;
  final TextStyle style;
  final double height;
  final double width;
  final EdgeInsets padding;
  final double borderRadius;
  final String text;
  final List<String> textItemsName;
  final Function(String value)? onChanged;
  final Function()? onTap;
  const ReasomnForReturnSheet({
    Key? key,
    this.backColor = ColorName.white,
    this.style = const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
    this.height = 389,
    this.width = double.infinity,
    this.padding =
        const EdgeInsets.only(top: 18, left: 20, right: 20, bottom: 32),
    this.borderRadius = 12,
    this.onChanged,
    this.onTap,
    required this.text,
    required this.textItemsName,
  }) : super(key: key);

  @override
  State<ReasomnForReturnSheet> createState() => _ReasomnForReturnSheetState();
}

class _ReasomnForReturnSheetState extends State<ReasomnForReturnSheet> {
  // final textItemsName = <String>[
  //   "Не получается продать",
  //   "Не получается продать",
  //   "Не получается продать",
  //   "Не получается продать",
  // ];

  var checks = <bool>[];
  @override
  void initState() {
    checks = List<bool>.filled(widget.textItemsName.length, false);
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
                child: ListView.builder(
                  itemCount: widget.textItemsName.length,
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
                          text: widget.textItemsName[i],
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                // First Button
                SizedBox(
                  width: 12,
                ),
                // Second Button
              ],
            ),
          ],
        ),
      ),
    );
  }
}
