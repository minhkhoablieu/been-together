part of 'settings_bloc.dart';

class SettingsState extends Equatable {
  final Map<String, dynamic> settings;
  final Setting? selectedSetting; // Thêm thuộc tính mới để giữ cài đặt đã chọn

  const SettingsState({required this.settings, this.selectedSetting});

  @override
  List<Object?> get props => [settings, selectedSetting];

  SettingsState copyWith(
      {Map<String, dynamic>? settings, Setting? selectedSetting}) {
    return SettingsState(
      settings: settings ?? this.settings,
      selectedSetting: selectedSetting ?? this.selectedSetting,
    );
  }
}
