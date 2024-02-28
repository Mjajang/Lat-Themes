part of 'font_setting_cubit.dart';

class FontSettingState extends Equatable {
  final String fontFamily;
  const FontSettingState({required this.fontFamily});

  @override
  List<Object> get props => [fontFamily];
}
