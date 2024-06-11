import 'package:been_together/features/setting/domain/entities/setting.dart';
import 'package:been_together/features/setting/domain/usecases/get_setting_by_key.dart';
import 'package:been_together/features/setting/domain/usecases/get_settings.dart';
import 'package:been_together/features/setting/domain/usecases/update_setting.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final GetSettings getSettings;
  final UpdateSetting updateSetting;
  final GetSettingByKey getSettingByKey;

  SettingsBloc(
      {required this.getSettings,
      required this.updateSetting,
      required this.getSettingByKey})
      : super(const SettingsState(settings: {})) {
    on<LoadSettings>(_onLoadSettings);
  }

  Future<void> _onLoadSettings(
    LoadSettings event,
    Emitter<SettingsState> emit,
  ) async {
    final settings = await getSettings();
    emit(SettingsState(settings: settings));
  }
}
