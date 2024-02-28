// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lat_theme/src/screens/cubit/font_setting/font_setting_cubit.dart';
import 'package:lat_theme/src/screens/hello_world_screen.dart';

import 'src/values/constants/themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FontSettingCubit(),
      child: BlocBuilder<FontSettingCubit, FontSettingState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeClass.lightTheme(state.fontFamily),
            darkTheme: ThemeClass.darkTheme(state.fontFamily),
            themeMode: ThemeMode.system,
            home: const HelloWorldScreen(),
          );
        },
      ),
    );
  }
}
