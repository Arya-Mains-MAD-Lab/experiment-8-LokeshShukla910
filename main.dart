import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: FileStoragePage());
  }
}

class FileStoragePage extends StatefulWidget {
  const FileStoragePage({super.key});

  @override
  State<FileStoragePage> createState() => _FileStoragePageState();
}

class _FileStoragePageState extends State<FileStoragePage> {
  String fileData = "No Data";

  Future<void> writeData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("data", "Flutter Web Storage Example");
  }

  Future<void> readData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      fileData = prefs.getString("data") ?? "File not found";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Web Storage')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(fileData),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: writeData,
              child: const Text("Write Data"),
            ),
            ElevatedButton(
              onPressed: readData,
              child: const Text("Read Data"),
            ),
          ],
        ),
      ),
    );
  }
}
