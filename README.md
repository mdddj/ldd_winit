# ldd_winit

Cross-platform get display info for MacOS、Windows、Linux. Like electron Display Object

## Getting Started

On Linux, you need to install libxcb、libxrandr

Debian/Ubuntu: Debian/Ubuntu：

```bash
apt-get install libxcb1 libxrandr2
```

Alpine
```bash
apk add libxcb libxrandr
```

ArchLinux
```bash
pacman -S libxcb libxrandr
```

## Initialization

```dart
void main(){
  winitLibarayInit(); // init api
}
```

## Get display info
```dart
Future<void> getDisplayInfoList() async {
  List<LddDisplayInfo> displatInfoList = await lddGetWindowsMonitors();
}
```

## LddDisplayInfo class

```dart

///屏幕信息
class LddDisplayInfo {
  /// 显示名称
  /// The name of the display
  final String name;

  /// 与显示器关联的唯一标识符。
  /// Unique identifier associated with the display.
  final int id;

  /// 本机屏幕原始句柄
  /// CGDisplay/HMONITOR/Output - Native display raw handle
  final int rawHandle;

  /// 显示器x坐标
  /// The display x coordinate.
  final int x;

  /// 显示器y坐标。
  /// The display y coordinate.
  final int y;

  /// 显示像素宽度。
  /// The display pixel width.
  final int width;

  /// 显示像素高度。
  /// The display pixel height.
  final int height;

  /// 可以是0、90、180、270，表示屏幕按时钟方向旋转的度数。
  ///  Can be 0, 90, 180, 270, represents screen rotation in clock-wise degrees.
  final double rotation;

  /// 输出设备的像素比例因子。
  /// Output device's pixel scale factor.
  final double scaleFactor;

  /// 显示刷新率。
  /// The display refresh rate.
  final double frequency;

  /// 屏幕是否为主屏幕
  ///  Whether the screen is the main screen
  final bool isPrimary;

  const LddDisplayInfo({
    required this.name,
    required this.id,
    required this.rawHandle,
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
      rawHandle.hashCode ^
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
          rawHandle == other.rawHandle &&
          x == other.x &&
          y == other.y &&
          width == other.width &&
          height == other.height &&
          rotation == other.rotation &&
          scaleFactor == other.scaleFactor &&
          frequency == other.frequency &&
          isPrimary == other.isPrimary;
}

```