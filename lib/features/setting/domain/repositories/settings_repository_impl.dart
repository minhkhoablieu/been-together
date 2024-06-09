import 'package:been_together/features/setting/domain/entities/setting.dart';
import 'package:been_together/features/setting/domain/repositories/settings_repository.dart';

class SettingsRepositoryImpl implements SettingsRepository {

  @override
  Future<Map<String, Setting>> getSettings() async {
    // TODO: implement getSettings
    throw UnimplementedError();
  }

  @override
  Future<void> updateSetting(String key, value) async {
    // TODO: implement updateSetting
    throw UnimplementedError();
  }
  
}