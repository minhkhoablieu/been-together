import 'package:been_together/features/setting/domain/repositories/settings_repository.dart';

class GetSettings {
  final SettingsRepository repository;

  GetSettings(this.repository);

  Future<Map<String, dynamic>> call() => repository.getSettings();

}