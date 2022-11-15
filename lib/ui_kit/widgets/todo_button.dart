import 'package:flutter/cupertino.dart';
import 'package:todo_app/ui_kit/style/colors.dart';
import 'package:todo_app/ui_kit/style/text_styles.dart';

class TodoButton extends StatelessWidget {
  final ButtonType buttonType;
  final String buttonText;
  final VoidCallback? onTap;
  final double? height;
  final double? width;

  const TodoButton({
    required this.buttonText,
    required this.buttonType,
    this.onTap,
    Key? key,
    this.height = 50,
    this.width = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onTap,
      disabledColor: TodoColors.bgLightPink,
      color: buttonType.getButtonColor,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: onTap == null ? TodoColors.bgLightPink : TodoColors.purple,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        height: height,
        alignment: Alignment.center,
        width: width,
        child: Text(
          buttonText,
          style: TodoTextStyle.darkPurple14Normal400.copyWith(
            color: onTap == null ? TodoColors.pink : buttonType.getTextColor,
          ),
        ),
      ),
    );
  }
}

enum ButtonType { purple, white }

extension GetButtonStyle on ButtonType {
  Color get getButtonColor {
    switch (this) {
      case ButtonType.purple:
        {
          return TodoColors.purple;
        }
      case ButtonType.white:
        {
          return TodoColors.bgLightPink;
        }
      default:
        {
          return TodoColors.purple;
        }
    }
  }

  Color get getTextColor {
    switch (this) {
      case ButtonType.purple:
        {
          return TodoColors.bgLightPink;
        }
      case ButtonType.white:
        {
          return TodoColors.purple;
        }
      default:
        {
          return TodoColors.bgLightPink;
        }
    }
  }
}
