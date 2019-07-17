import 'package:flutter/material.dart';
import 'package:flutter_app/login/login.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_cupertino_localizations/flutter_cupertino_localizations.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    requestPermission();
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: LoginWidget(
      ),
    );
  }
}

Future requestPermission() async {
  // 申请权限

  Map<PermissionGroup, PermissionStatus> permissions =

  await PermissionHandler().requestPermissions([PermissionGroup.storage]);

  // 申请结果
  PermissionStatus permission =

  await PermissionHandler().checkPermissionStatus(PermissionGroup.storage);

  if (permission == PermissionStatus.granted) {

    Fluttertoast.showToast(msg: "权限申请通过");

  } else {

    Fluttertoast.showToast(msg: "权限申请被拒绝");

  }

}

Future checkPermission() async {
  await PermissionHandler().checkPermissionStatus(
      PermissionGroup.storage);
}
