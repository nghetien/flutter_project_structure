import 'package:basic_flutter_theme/basic_flutter_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RootPage extends StatelessWidget {
  final Widget child;

  const RootPage({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Root"),
      ),
      body: Padding(
        padding: EdgeInsets.all(BasicPaddings().p12),
        child: child,
      ),
    );
  }
}
