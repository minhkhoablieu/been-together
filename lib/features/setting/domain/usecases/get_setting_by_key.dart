import 'package:been_together/features/setting/domain/entities/setting.dart';
import 'package:been_together/features/setting/domain/repositories/settings_repository.dart';

class GetSettingByKey {
  final SettingsRepository repository;

  GetSettingByKey(this.repository);

  Future<Setting?> call(String key) {
    return repository.getSettingByKey(key);
  }
}
