import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_books/constants.dart';

class CustomLogInTextField extends StatefulWidget {
  final IconData icon;
  final IconData? suffixIcon;
  final String labelText;

  const CustomLogInTextField({
    Key? key,
    required this.icon,
    this.suffixIcon,
    required this.labelText,
  }) : super(key: key);

  @override
  State<CustomLogInTextField> createState() => _CustomLogInTextFieldState();
}

class _CustomLogInTextFieldState extends State<CustomLogInTextField> {
  bool isFocused = false;
  bool isObsecured = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () {
        setState(() {
          isFocused = !isFocused;
        });
      },
      onFieldSubmitted: (value) {
        setState(() {
          isFocused = false;
        });
      },
      onTapOutside: (event) {
        setState(() {
          isFocused = false;
        });
        FocusScope.of(context).unfocus();
      },
      obscureText: isObsecured,
      readOnly: false,
      showCursor: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: TextStyle(color: isFocused ? kPrimaryColor : kGreyColor),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isObsecured = !isObsecured;
            });
          },
          icon: Icon(
            isObsecured ? widget.suffixIcon : Icons.visibility_outlined,
            color: isFocused ? kPrimaryColor : kGreyColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0.r),
          borderSide: const BorderSide(
            color: kPrimaryColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0.r),
          borderSide: const BorderSide(
            color: kGreyColor,
          ),
        ),
        prefixIcon: Icon(
          widget.icon,
          color: isFocused ? kPrimaryColor : kGreyColor,
        ),
      ),
    );
  }
}
