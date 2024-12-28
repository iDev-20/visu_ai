import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:visu_ai/resources/app_colors.dart';
import 'package:visu_ai/resources/app_images.dart';

class SearchTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final int maxLines;
  final int? maxLength;
  final bool? obscureText;
  final bool autofocus;
  final bool enabled;

  const SearchTextFormField({
    super.key,
    this.controller,
    this.labelText = '',
    this.hintText = '',
    this.prefixWidget,
    this.suffixWidget,
    this.onChanged,
    this.validator,
    this.inputFormatters,
    this.keyboardType,
    this.maxLines = 1,
    this.autofocus = false,
    this.maxLength,
    this.obscureText,
    this.onTap,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      decoration: BoxDecoration(
        color: AppColors.secondBlack,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextField(
        autofocus: autofocus,
        cursorColor: AppColors.yellow,
        style: const TextStyle(
          color: AppColors.white,
          fontSize: 13,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
            suffixIcon: Padding(
              padding: const EdgeInsets.all(10.0),
              child: suffixWidget,
            ),
            prefixIconConstraints:
                const BoxConstraints(maxHeight: 36, maxWidth: 36),
            contentPadding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            hintText: hintText ?? 'Search',
            hintStyle: const TextStyle(
              color: AppColors.white,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
            border: InputBorder.none,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(10),
              child: AppImages.svgSearchOn,
            )),
        inputFormatters: inputFormatters,
        keyboardType: TextInputType.text,
        controller: controller,
        onChanged: onChanged,
      ),
    );
  }
}

class PrimaryTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final int maxLines;
  final int? maxLength;
  final bool? obscureText;
  final bool required;
  final bool autofocus;
  final bool enabled;
  final String? helperText;

  const PrimaryTextFormField(
      {super.key,
      this.controller,
      this.labelText,
      this.hintText,
      this.prefixWidget,
      this.suffixWidget,
      this.onChanged,
      this.validator,
      this.inputFormatters,
      this.keyboardType,
      this.maxLines = 1,
      this.autofocus = false,
      this.maxLength,
      this.obscureText,
      this.onTap,
      this.enabled = true,
      this.required = false,
      this.helperText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Visibility(
            visible: labelText != null,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Row(
                children: [
                  Text(
                    labelText ?? '',
                    style: const TextStyle(
                        color: Colors.pink,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  Visibility(
                    visible: required,
                    child: Text(
                      helperText ?? ' (Optional)',
                      style: const TextStyle(
                          color: Color.fromRGBO(154, 154, 154, 1),
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 48,
            decoration: BoxDecoration(
                color: AppColors.darkBkack,
                borderRadius: BorderRadius.circular(12)),
            child: TextFormField(
              autofocus: autofocus,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
              cursorColor: AppColors.yellow,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: prefixWidget,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                hintText: hintText ?? '',
                hintStyle: const TextStyle(
                  color: AppColors.subtleGrey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 2.0),
                ),
              ),
              inputFormatters: inputFormatters,
              keyboardType: keyboardType,
              validator: validator,
              controller: controller,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}

class LongTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final bool? obscureText;
  final bool autofocus;
  final bool enabled;
  final bool required;

  const LongTextFormField(
      {super.key,
      this.controller,
      this.labelText = '',
      this.hintText = '',
      this.prefixWidget,
      this.suffixWidget,
      this.onChanged,
      this.validator,
      this.inputFormatters,
      this.keyboardType,
      this.minLines = 5,
      this.maxLines,
      this.autofocus = false,
      this.maxLength,
      this.obscureText,
      this.onTap,
      this.enabled = true,
      this.required = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Visibility(
            visible: labelText != null,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                children: [
                  Text(
                    labelText ?? '',
                    style: const TextStyle(
                        color: Colors.pink,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  Visibility(
                    visible: required,
                    child: const Text(
                      '*',
                      style: TextStyle(
                          color: Color.fromRGBO(255, 54, 36, 0.5),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
          ),
          TextFormField(
            autofocus: autofocus,
            minLines: minLines,
            maxLines: maxLines,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
            cursorColor: AppColors.yellow,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              hintText: hintText ?? '',
              hintMaxLines: 3,
              hintStyle: const TextStyle(
                color: AppColors.subtleGrey,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.green),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.green),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: const BorderSide(color: Colors.green, width: 2.0),
              ),
            ),
            inputFormatters: inputFormatters,
            keyboardType: keyboardType,
            validator: validator,
            controller: controller,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
