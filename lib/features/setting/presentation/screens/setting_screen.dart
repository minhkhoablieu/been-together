import 'package:been_together/features/setting/presentation/screens/widgets/date_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cài đặt'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DatePicker(
              controller: _controller,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (kDebugMode) {
                  print(_controller.value.text);
                }
              },
              child: const Text('Lưu lại'),
            ),
          ],
        ),
      ),
    );
  }
}
