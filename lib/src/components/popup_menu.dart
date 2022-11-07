import 'package:distr_test/src/components/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:distr_test/src/utils/colors.gen.dart';

class PopupMenu extends StatefulWidget {
  final Color backColor;
  final TextStyle style;
  final double height;
  final double width;
  final EdgeInsets padding;
  final double borderRadius;
  final ValueChanged? onChanged;
  final Function()? onTap;
  final List<String> textName;
  final List<Color>? textColor;
  final List<Widget> icons;

  const PopupMenu({
    Key? key,
    this.backColor = ColorName.white,
    this.style = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    this.height = 90,
    this.width = double.infinity,
    this.padding = const EdgeInsets.all(18),
    this.borderRadius = 8.0,
    this.onChanged,
    this.onTap,
    required this.textName,
    this.textColor,
    required this.icons,
  }) : super(key: key);

  @override
  State<PopupMenu> createState() => _PopupMenuState();
}

class _PopupMenuState extends State<PopupMenu> {
  // final List<String> textName = [
  //   "Редактрировать",
  //   'Удалить',
  // ];
  // final List<Color> textColor = <Color>[
  //   ColorName.button,
  //   ColorName.red,
  // ];

  // final List<Widget> icons = [
  //   Assets.icons.edit.svg(),
  //   Assets.icons.trash.svg(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: widget.backColor,
        borderRadius: BorderRadius.circular(widget.borderRadius),
      ),
      child: Padding(
        padding: widget.padding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (var i = 0; i < widget.textName.length; i++) Items(i),
          ],
        ),
      ),
    );
  }

  Widget Items(int index) {
    return Row(
      children: [
        widget.icons[index],
        const SizedBox(
          width: 8,
        ),
        AppWidgets.text(
          text: widget.textName[index],
          textStyle: TextStyle(
            color:  widget.textColor != null ? widget.textColor![index] : ColorName.black,
            fontSize: widget.style.fontSize,
            fontWeight: widget.style.fontWeight,
          ),
        ),
      ],
    );
  }
}
