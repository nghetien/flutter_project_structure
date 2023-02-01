import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_project_structure/runner/runner.dart';
import 'package:provider/provider.dart';

import 'core/core.dart';
import 'core/l10n/generated/l10n.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LanguageStore>(
          create: (_) => LanguageStore.to,
        ),
        ChangeNotifierProvider<ThemeStore>(
          create: (_) => ThemeStore.to,
        ),
        ChangeNotifierProvider<MainStore>(
          create: (_) => MainStore.to,
        ),
      ],
      builder: (context, child) {
        Provider.of<LanguageStore>(context, listen: true);
        Provider.of<ThemeStore>(context, listen: true);
        Provider.of<MainStore>(context, listen: true);
        return MaterialApp.router(
          title: 'Flutter Hi!',
          builder: EasyLoading.init(),
          scaffoldMessengerKey: GlobalConfig.snackBarKey,
          debugShowCheckedModeBanner: true,
          routerConfig: AppRouter.to.router,
          theme: ThemeStore.to.currentTheme,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          locale: LanguageStore.to.currentLocale,
        );
      },
    );
  }
}