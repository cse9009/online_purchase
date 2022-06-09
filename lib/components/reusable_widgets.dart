import 'package:flutter/material.dart';

Widget rPrimaryButton(
        {backgroundColor,
        buttonText,
        buttonTextColor = Colors.white,
        fontSize = 18.0,
        borderRadius = 10.0,
        onPressed}) =>
    TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(buttonTextColor),
        backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        )),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(
          buttonText,
          style: TextStyle(fontSize: fontSize),
        ),
      ),
    );

Widget rPrimaryTextField(
        {controller,
        obscureText = false,
        readOnly = false,
        keyboardType,
        borderColor,
        prefixIcon,
        hintText}) =>
    TextField(
      controller: controller,
      obscureText: obscureText,
      readOnly: readOnly,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: borderColor),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          prefixIcon: prefixIcon,
          labelText: hintText,
          hintText: hintText),
    );
