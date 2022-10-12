library ruler_picker_bn;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

/// Flutter package for ruler type value picker.
/// You can get horizontal and vertical ruler view with the package.
class RulerPicker extends StatefulWidget {
  const RulerPicker(
      {Key? key,
      this.minValue = 0,
      this.maxValue = 250,
      this.startValue = 160,
      this.background = Colors.white,
      this.lineColor = Colors.black,
      this.padding = const EdgeInsets.all(4),
      this.direction = Axis.vertical,
      required this.onChange})
      : super(key: key);

  /// event for get to ruler value
  final ValueSetter<int> onChange;

  /// set ruler background color
  final Color background;

  /// set ruler padding value
  final EdgeInsets padding;

  /// set ruler value line color
  final Color lineColor;

  /// set ruler direction
  final Axis direction;

  /// set ruler starting value position
  final int startValue;

  /// set ruler min value
  final int minValue;

  /// set ruler max value
  final int maxValue;
  @override
  RulerPickerState createState() => RulerPickerState();
}

class RulerPickerState extends State<RulerPicker> {
  final ItemScrollController controllerScroll = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Stack(
        children: [
          Container(
            padding: widget.padding,
            decoration: BoxDecoration(color: widget.background),
            child: widget.direction == Axis.vertical
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ScrollablePositionedList.builder(
                            itemCount: 5000,
                            scrollDirection: widget.direction,
                            shrinkWrap: true,
                            initialScrollIndex: 2501,
                            itemScrollController: controllerScroll,
                            itemPositionsListener: itemPositionsListener,
                            itemBuilder: (context, index) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        top: widget.direction == Axis.vertical
                                            ? BorderSide(
                                                color: index % 10 == 0
                                                    ? widget.lineColor
                                                        .withOpacity(0.54)
                                                    : index % 5 == 0
                                                        ? widget.lineColor
                                                            .withOpacity(0.36)
                                                        : widget.lineColor
                                                            .withOpacity(0.12))
                                            : BorderSide.none,
                                        left: widget.direction ==
                                                Axis.horizontal
                                            ? BorderSide(
                                                color: index % 10 == 0
                                                    ? widget.lineColor
                                                        .withOpacity(0.54)
                                                    : index % 5 == 0
                                                        ? widget.lineColor
                                                            .withOpacity(0.36)
                                                        : widget.lineColor
                                                            .withOpacity(0.12))
                                            : BorderSide.none,
                                      ),
                                    ),
                                    height: widget.direction == Axis.vertical
                                        ? 1
                                        : constraints.maxHeight *
                                                (index % 10 == 0
                                                    ? 1
                                                    : index % 5 == 0
                                                        ? 0.75
                                                        : 0.5) -
                                            16 -
                                            widget.padding.top -
                                            widget.padding.bottom,
                                    width: widget.direction == Axis.horizontal
                                        ? 1
                                        : constraints.maxWidth *
                                                (index % 10 == 0
                                                    ? 1
                                                    : index % 5 == 0
                                                        ? 0.75
                                                        : 0.5) -
                                            16 -
                                            widget.padding.left -
                                            widget.padding.right,
                                    margin: widget.direction == Axis.vertical
                                        ? const EdgeInsets.symmetric(
                                            vertical: 2)
                                        : const EdgeInsets.symmetric(
                                            horizontal: 2),
                                  ),
                                ],
                              );
                            }),
                      ),
                      const Icon(
                        Icons.arrow_left,
                        color: Colors.black54,
                        size: 16,
                      ),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ScrollablePositionedList.builder(
                            itemCount: 5000,
                            scrollDirection: widget.direction,
                            shrinkWrap: true,
                            initialScrollIndex: 2501,
                            itemScrollController: controllerScroll,
                            itemPositionsListener: itemPositionsListener,
                            itemBuilder: (context, index) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        top: widget.direction == Axis.vertical
                                            ? BorderSide(
                                                color: index % 10 == 0
                                                    ? widget.lineColor
                                                        .withOpacity(0.54)
                                                    : index % 5 == 0
                                                        ? widget.lineColor
                                                            .withOpacity(0.36)
                                                        : widget.lineColor
                                                            .withOpacity(0.12))
                                            : BorderSide.none,
                                        left: widget.direction ==
                                                Axis.horizontal
                                            ? BorderSide(
                                                color: index % 10 == 0
                                                    ? widget.lineColor
                                                        .withOpacity(0.54)
                                                    : index % 5 == 0
                                                        ? widget.lineColor
                                                            .withOpacity(0.36)
                                                        : widget.lineColor
                                                            .withOpacity(0.12))
                                            : BorderSide.none,
                                      ),
                                    ),
                                    height: widget.direction == Axis.vertical
                                        ? 1
                                        : constraints.maxHeight *
                                                (index % 10 == 0
                                                    ? 1
                                                    : index % 5 == 0
                                                        ? 0.75
                                                        : 0.5) -
                                            16 -
                                            widget.padding.top -
                                            widget.padding.bottom,
                                    width: widget.direction == Axis.horizontal
                                        ? 1
                                        : constraints.maxWidth *
                                                (index % 10 == 0
                                                    ? 1
                                                    : index % 5 == 0
                                                        ? 0.75
                                                        : 0.5) -
                                            16 -
                                            widget.padding.left -
                                            widget.padding.right,
                                    margin: widget.direction == Axis.vertical
                                        ? const EdgeInsets.symmetric(
                                            vertical: 2)
                                        : const EdgeInsets.symmetric(
                                            horizontal: 2),
                                  ),
                                ],
                              );
                            }),
                      ),
                      Icon(
                        Icons.arrow_drop_up,
                        color: widget.lineColor.withOpacity(0.54),
                        size: 16,
                      ),
                    ],
                  ),
          ),
          Align(
            alignment: widget.direction == Axis.vertical
                ? Alignment.topCenter
                : Alignment.centerLeft,
            child: Container(
              width: widget.direction == Axis.vertical
                  ? constraints.maxWidth
                  : constraints.maxWidth * 0.2,
              height: widget.direction == Axis.vertical
                  ? constraints.maxHeight * 0.2
                  : constraints.maxHeight,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: widget.direction == Axis.vertical
                    ? Alignment.topCenter
                    : Alignment.centerLeft,
                end: widget.direction == Axis.vertical
                    ? Alignment.bottomCenter
                    : Alignment.centerRight,
                stops: const [
                  0.2,
                  0.4,
                  0.6,
                  0.8,
                ],
                colors: [
                  widget.background,
                  widget.background.withOpacity(0.75),
                  widget.background.withOpacity(0.5),
                  widget.background.withOpacity(0.25),
                ],
              )),
            ),
          ),
          Align(
            alignment: widget.direction == Axis.vertical
                ? Alignment.bottomCenter
                : Alignment.centerRight,
            child: Container(
              width: widget.direction == Axis.vertical
                  ? constraints.maxWidth
                  : constraints.maxWidth * 0.2,
              height: widget.direction == Axis.vertical
                  ? constraints.maxHeight * 0.2
                  : constraints.maxHeight,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: widget.direction == Axis.vertical
                    ? Alignment.topCenter
                    : Alignment.centerLeft,
                end: widget.direction == Axis.vertical
                    ? Alignment.bottomCenter
                    : Alignment.centerRight,
                stops: const [
                  0.2,
                  0.4,
                  0.6,
                  0.8,
                ],
                colors: [
                  widget.background.withOpacity(0.25),
                  widget.background.withOpacity(0.5),
                  widget.background.withOpacity(0.75),
                  widget.background,
                ],
              )),
            ),
          ),
        ],
      );
    });
  }

  int prevValue = 0;
  @override
  void initState() {
    super.initState();

    itemPositionsListener.itemPositions.addListener(() {
      var positions = itemPositionsListener.itemPositions.value;
      int? min;
      int? max;
      if (positions.isNotEmpty) {
        min = positions
            .where((ItemPosition position) => position.itemTrailingEdge > 0)
            .reduce((ItemPosition min, ItemPosition position) =>
                position.itemTrailingEdge < min.itemTrailingEdge
                    ? position
                    : min)
            .index;
        max = positions
            .where((ItemPosition position) => position.itemLeadingEdge < 1)
            .reduce((ItemPosition max, ItemPosition position) =>
                position.itemLeadingEdge > max.itemLeadingEdge ? position : max)
            .index;
        int position =
            ((((max! - min!) / 2)) + min).toInt() - 2520 + widget.startValue;
        int value = position < widget.minValue
            ? widget.minValue
            : position > widget.maxValue
                ? widget.maxValue
                : position;
        if (prevValue != value) {
          widget.onChange(value);
          prevValue = value;
        }
        if (kDebugMode) {
          print("prevValue : $prevValue value : $value");
        }
      }
    });
  }
}
