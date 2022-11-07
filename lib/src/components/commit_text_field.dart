// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:distr_test/src/components/app_widgets.dart';
import 'package:flutter/material.dart';

import 'package:distr_test/src/utils/colors.gen.dart';

class CommitTextField extends StatefulWidget {
  final bool enabled;
  final Color borderColor;
  final Color backColor;
  final Color backInputColor;
  final TextStyle? hintStyle;
  final TextStyle style;
  final String? hint;
  final String text;
  final double height;
  final double width;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final double borderRadius;
  final Widget? suffix;
  final Widget? prefix;
  final Function(String value)? onChanged;
  final Function()? onTap;

  const CommitTextField({
    Key? key,
    this.enabled = true,
    this.borderColor = ColorName.gray1,
    this.backColor = ColorName.white,
    this.backInputColor = ColorName.input,
    this.hintStyle = const TextStyle(color: ColorName.gray1),
    this.style = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    this.hint,
    required this.text,
    this.height = 281,
    this.width = double.infinity,
    this.padding =
        const EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 23),
    this.margin = const EdgeInsets.all(18),
    this.borderRadius = 8,
    this.suffix,
    this.prefix,
    this.onChanged,
    this.onTap,
  }) : super(key: key);

  @override
  State<CommitTextField> createState() => _CommitTextFieldState();
}

class _CommitTextFieldState extends State<CommitTextField> {
  late FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();

    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    myFocusNode.dispose();

    super.dispose();
  }

  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      decoration: BoxDecoration(
        color: ColorName.white,
        borderRadius: BorderRadius.circular(widget.borderRadius),
      ),
      child: Padding(
        padding: widget.padding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppWidgets.text(
              text: widget.text,
              textStyle: TextStyle(
                fontSize: widget.style.fontSize,
                fontWeight: widget.style.fontWeight,
              ),
            ),
            const SizedBox(height: 18),
            Container(
              padding: const EdgeInsets.only(left: 18),
              height: 134,
              decoration: BoxDecoration(
                  color: widget.backInputColor,
                  borderRadius: BorderRadius.circular(widget.borderRadius),
                  border: Border.all(color: widget.borderColor)),
              child: TextField(
                controller: textEditingController,
                focusNode: myFocusNode,
                style: const TextStyle(
                  fontSize: 16,
                ),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Пишите...",
                  hintStyle: widget.hintStyle,
                ),
                obscureText: false,
                maxLines: textEditingController.text.isEmpty
                    ? 20
                    : textEditingController.text.length,
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
