import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/ui_kit/style/colors.dart';
import 'package:todo_app/ui_kit/style/text_styles.dart';

class TodoTextField extends StatelessWidget {
  final String? title;
  final Color titleTextColor;
  final double? height;
  final int? maxLength;
  final int errorMaxLines;
  final double radius;
  final bool centerText;
  final bool? password;
  final bool enabled;
  final bool showError;
  final TextInputType? inputType;
  final int? maxLines;
  final ValueChanged<String>? onChanged;
  final TextEditingController? textEditingController;
  final bool? isTextAlignCenter;
  final FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? filterTextInput;

  const TodoTextField({
    required this.onChanged,
    this.enabled = true,
    this.titleTextColor = Colors.grey,
    this.radius = 15.0,
    this.centerText = false,
    this.isTextAlignCenter = false,
    this.maxLines = 1,
    this.errorMaxLines = 2,
    this.showError = true,
    this.height,
    this.maxLength,
    this.title,
    this.password,
    this.textEditingController,
    this.inputType,
    this.validator,
    this.filterTextInput,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title ?? '',
          style: TodoTextStyle.darkPurple14Normal400,
        ),
        TextFormField(
          inputFormatters: filterTextInput,
          enabled: enabled,
          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          maxLength: maxLength,
          textAlign: isTextAlignCenter! ? TextAlign.center : TextAlign.start,
          controller: textEditingController,
          obscureText: password ?? false,
          keyboardType: inputType ?? TextInputType.text,
          onChanged: onChanged,
          maxLines: maxLines,
          decoration: InputDecoration(
            counterText: '',
            errorStyle: showError ? null : const TextStyle(height: 0),
            errorMaxLines: errorMaxLines,
            fillColor: TodoColors.bgWhite,
            filled: true,
            disabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: TodoColors.violet),
              borderRadius: BorderRadius.circular(
                radius,
              ),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: TodoColors.violet),
              borderRadius: BorderRadius.circular(
                radius,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: TodoColors.violet),
              borderRadius: BorderRadius.circular(
                radius,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: TodoColors.purple,
              ),
              borderRadius: BorderRadius.circular(
                radius,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: TodoColors.redError),
              borderRadius: BorderRadius.circular(
                radius,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: TodoColors.redError),
              borderRadius: BorderRadius.circular(
                radius,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
