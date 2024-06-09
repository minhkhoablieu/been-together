import 'package:been_together/features/setting/domain/entities/setting.dart';

abstract class SettingsRepository {
  Future<Map<String, Setting>> getSettings();
  Future<void> updateSetting(String key, dynamic value);
}