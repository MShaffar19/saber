
import 'package:flutter/material.dart';

class StrokeProperties {
  static const Color defaultColor = Colors.black;
  static const double defaultSize = 10;
  static const double defaultThinning = 0.7;
  static const double defaultSmoothing = 0;
  static const double defaultStreamline = 0.5;
  static const double defaultTaperStart = 0.0;
  static const double defaultTaperEnd = 0.0;
  static const bool defaultCapStart = true;
  static const bool defaultCapEnd = true;
  static const bool defaultSimulatePressure = true;

  Color color = defaultColor;
  double size = defaultSize;
  double thinning = defaultThinning;
  double smoothing = defaultSmoothing;
  double streamline = defaultStreamline;
  double taperStart = defaultTaperStart;
  double taperEnd = defaultTaperEnd;
  bool capStart = defaultCapStart;
  bool capEnd = defaultCapEnd;
  bool simulatePressure = defaultSimulatePressure;
  //bool isComplete = defaultIsComplete; // not needed

  StrokeProperties();
  StrokeProperties.fromJson(Map<String, dynamic> json) {
    color = Color(json['c'] ?? defaultColor.value);
    size = json['s'] ?? defaultSize;
    thinning = json['t'] ?? defaultThinning;
    smoothing = json['sm'] ?? defaultSmoothing;
    streamline = json['sl'] ?? defaultStreamline;
    taperStart = json['ts'] ?? defaultTaperStart;
    taperEnd = json['te'] ?? defaultTaperEnd;
    capStart = json['cs'] ?? defaultCapStart;
    capEnd = json['ce'] ?? defaultCapEnd;
    simulatePressure = json['sp'] ?? defaultSimulatePressure;
  }
  Map<String, dynamic> toJson() => {
    if (color != defaultColor) 'c': color.value,
    if (size != defaultSize) 's': size,
    if (thinning != defaultThinning) 't': thinning,
    if (smoothing != defaultSmoothing) 'sm': smoothing,
    if (streamline != defaultStreamline) 'sl': streamline,
    if (taperStart != defaultTaperStart) 'ts': taperStart,
    if (taperEnd != defaultTaperEnd) 'te': taperEnd,
    if (capStart != defaultCapStart) 'cs': capStart,
    if (capEnd != defaultCapEnd) 'ce': capEnd,
    if (simulatePressure != defaultSimulatePressure) 'sp': simulatePressure,
  };

  StrokeProperties copy() => StrokeProperties.fromJson(toJson());
}
