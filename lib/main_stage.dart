import 'package:flutter/material.dart';
import 'package:flutter_project_structure/runner/runner.dart';

import 'src/my_app.dart';

void main() async {
  await GlobalConfig.initApp(flavorMode: FlavorMode.stage);
  runApp(const MyApp());
}
