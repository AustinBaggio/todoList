import 'package:flutter/material.dart';

const BoxDecoration kBoxStyle = BoxDecoration(
  color: kMainLightColor,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
  ),
);
const TextStyle kTextTitle = TextStyle(
  color: kMainLightColor,
  fontSize: 50,
  fontWeight: FontWeight.w500,
);

const Color kMainDarkColor = Colors.blueGrey;
const Color kMainLightColor = Colors.white;