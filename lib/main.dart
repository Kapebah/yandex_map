import 'package:flutter/material.dart';
import 'package:yandex_maps_mapkit/init.dart' as init;
import 'package:yandex_maps_mapkit/mapkit.dart';
import 'package:yandex_maps_mapkit/yandex_map.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await init.initMapkit(apiKey: '27f59aad-979b-400e-9b84-4cb9364903be');

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: YandexMapPage(),
    );
  }
}

class YandexMapPage extends StatefulWidget {
  const YandexMapPage({super.key});

  @override
  _YandexMapPageState createState() => _YandexMapPageState();
}

class _YandexMapPageState extends State<YandexMapPage> {
  MapWindow? _mapWindow;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Яндекс карта'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.blueGrey),
        ),
        child: YandexMap(
          onMapCreated: (mapWindow) {
            setState(() {
              _mapWindow = mapWindow;
            });
          },
        ),
      ),
    );
  }
}
