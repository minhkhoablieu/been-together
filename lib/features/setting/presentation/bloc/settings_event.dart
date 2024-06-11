part of 'settings_bloc.dart';

abstract class SettingsEvent extends Equatable {
  const SettingsEvent();

  @override
  List<Object> get props => [];
}

class LoadSettings extends SettingsEvent {}

class UpdateSettingEvent extends SettingsEvent {
  final String key;
  final dynamic value;

  const UpdateSettingEvent(this.key, this.value);

  @override
  List<Object> get props => [key, value];
}

class GetSettingByKeyEvent extends SettingsEvent {
  final String key;

  const GetSettingByKeyEvent(this.key);

  @override
  List<Object> get props => [key];
}
