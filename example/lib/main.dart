import 'package:flutter/material.dart';
import 'package:ldd_winit/api/winit.dart';
import 'package:ldd_winit/frb_generated.dart';

void main() {
  RustLib.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  Future<void> getDisplayInfoList() async {
    List<LddDisplayInfo> displatInfoList = await lddGetWindowsMonitors();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Native Packages'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TextButton(
                  onPressed: getDisplayInfoList, child: const Text("获取所有屏幕信息"))
            ],
          ),
        ),
      ),
    );
  }
}
