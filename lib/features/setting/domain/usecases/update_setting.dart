import 'package:been_together/features/setting/domain/repositories/settings_repository.dart';

class UpdateSetting {
  final SettingsRepository repository;

  UpdateSetting(this.repository);

  Future<void> call(String key, value) {
    return repository.updateSetting(key, value);
  }
}
