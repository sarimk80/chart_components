import 'package:flutter/material.dart';

class DataRepository {
  static List<double> data = [];
  static List<double> _data = [
    2.2,
    0.7,
    1.4,
    4.3,
    3.2,
    2.1,
    4.0,
    2.7,
    1.4,
    2.2,
    3.1,
    1.9,
    2.8,
    1.5,
    1.2,
    0,
    2.9,
    1.8,
    2.2,
    3.2,
    4.5,
    0.7,
    1.9,
    3.8,
    4.1,
    1.3,
  ];

  static List<double> getData() {
    data = _data;
    return _data;
  }

  static void clearData() {
    data = [];
  }

  static List<String> getLabels() {
    List<String> labels = [
      'tu',
      'we',
      'th',
      'fr',
      'sa',
      'su',
      'mo',
      'tu',
      'we',
      'th',
      'fr',
      'sa',
      'su',
      'mo',
      'tu',
      'we',
      'th',
      'fr',
      'sa',
      'su',
      'mo',
      'tu',
      'we',
      'th',
      'fr',
      'sa',
      'su',
      'mo',
      'tu',
      'we',
      'th',
      'fr',
      'sa',
      'su'
    ];

    return labels;
  }

  static Color getColor(double value) {
    return Colors.green.withAlpha(300);
  }

  static Color getDayColor(int day) {
    if (day < data.length) {
      return getColor(data[day]);
    } else
      return Colors.indigo.shade50;
  }

  static Widget getIcon(double value) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: NetworkImage(
                  'https://fastly.picsum.photos/id/659/200/200.jpg?hmac=kFpdD3XTBGwPUAH1tD-AiWigstjIX8WGIcyySuVQIvE'))),
    );
  }
}
