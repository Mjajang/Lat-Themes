import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'font_setting_state.dart';

class FontSettingCubit extends Cubit<FontSettingState> {
  FontSettingCubit() : super(const FontSettingState(fontFamily: 'Poppins')) {
    _initializeFont();
  }

  Future<void> _initializeFont() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    final currentFont = pref.getString('font_setting') ?? 'Poppins';
    emit(FontSettingState(fontFamily: currentFont));
  }

  void changeFont(String fontFamily) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('font_setting', fontFamily);
    emit(FontSettingState(fontFamily: fontFamily));
  }
}
