import 'package:basic_flutter_theme/basic_flutter_theme.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Home Page',
        style: BasicTextStyles.headline,
      ),
    );
  }
}
