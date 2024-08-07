// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.1.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`, `fmt`, `into`

///读取已连接屏幕信息
Future<List<LddDisplayInfo>> lddGetWindowsMonitors() =>
    RustLib.instance.api.crateApiWinitLddGetWindowsMonitors();

///屏幕信息
class LddDisplayInfo {
  /// 显示名称
  final String name;

  /// 与显示器关联的唯一标识符。
  final int id;

  /// 显示器x坐标
  final int x;

  /// 显示器y坐标。
  final int y;

  /// 显示像素宽度。
  final int width;

  /// 显示像素高度。
  final int height;

  /// 可以是0、90、180、270，表示屏幕按时钟方向旋转的度数。
  final double rotation;

  /// 输出设备的像素比例因子。
  final double scaleFactor;

  /// 显示刷新率。
  final double frequency;

  /// 屏幕是否为主屏幕
  final bool isPrimary;

  const LddDisplayInfo({
    required this.name,
    required this.id,
    required this.x,
    required this.y,
    required this.width,
    required this.height,
    required this.rotation,
    required this.scaleFactor,
    required this.frequency,
    required this.isPrimary,
  });

  @override
  int get hashCode =>
      name.hashCode ^
      id.hashCode ^
      x.hashCode ^
      y.hashCode ^
      width.hashCode ^
      height.hashCode ^
      rotation.hashCode ^
      scaleFactor.hashCode ^
      frequency.hashCode ^
      isPrimary.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LddDisplayInfo &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          id == other.id &&
          x == other.x &&
          y == other.y &&
          width == other.width &&
          height == other.height &&
          rotation == other.rotation &&
          scaleFactor == other.scaleFactor &&
          frequency == other.frequency &&
          isPrimary == other.isPrimary;
}
