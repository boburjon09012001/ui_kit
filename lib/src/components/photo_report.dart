import 'package:distr_test/extensions/app_extensions.dart';
import 'package:distr_test/src/components/app_widgets.dart';
import 'package:distr_test/src/utils/colors.gen.dart';
import 'package:flutter/material.dart';

class PhotoReport extends StatefulWidget {
  final Color textColor;
  final Color backColor;
  final TextStyle style;
  final double height;
  final double width;
  final EdgeInsets padding;
  final double borderRadius;
  final String image;
  final String text;
  final Function(String value)? onChanged;
  final Function()? onTap;

  const PhotoReport({
    Key? key,
    this.textColor = ColorName.black,
    this.backColor = ColorName.white,
    this.style = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    this.height = 283,
    this.width = double.infinity,
    this.padding = const EdgeInsets.all(24),
    this.borderRadius = 12,
    this.onChanged,
    this.onTap,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  State<PhotoReport> createState() => _PhotoReportState();
}

class _PhotoReportState extends State<PhotoReport> {
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

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      color: widget.backColor,
      child: Padding(
        padding: widget.padding,
        child: Column(
          children: [
            AppWidgets.networkImage(
                url: widget.image, height: 104, width: 104, radius: 8),
            Expanded(
              child: AppWidgets.text(
                      text: widget.text,
                      textStyle: TextStyle(
                        fontSize: widget.style.fontSize,
                        fontWeight: widget.style.fontWeight,
                      ),
                      textAlign: TextAlign.center)
                  .marginOnly(top: 24),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const [
                 // First Button
                 SizedBox(width: 12),
                // Second Button
              ],
            ),
          ],
        ),
      ),
    );
  }
}
