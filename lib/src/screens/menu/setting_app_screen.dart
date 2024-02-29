import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/font_setting/font_setting_cubit.dart';

class SettingAppScreen extends StatefulWidget {
  const SettingAppScreen({super.key});

  @override
  State<SettingAppScreen> createState() => _SettingAppScreenState();
}

class _SettingAppScreenState extends State<SettingAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting App"),
      ),
      body: DefaultTextStyle(
        style: Theme.of(context).textTheme.bodyMedium!,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<FontSettingCubit, FontSettingState>(
                builder: (context, state) {
                  return DropdownButton<String>(
                    value: state.fontFamily,
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        BlocProvider.of<FontSettingCubit>(context)
                            .changeFont(newValue);
                      }
                    },
                    items: const [
                      DropdownMenuItem(
                        value: 'Poppins',
                        child: Text('Poppins'),
                      ),
                      DropdownMenuItem(
                        value: 'Dancing Script',
                        child: Text('Dancing Script'),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
