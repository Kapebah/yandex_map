package com.example.yandex_map_example

import io.flutter.embedding.android.FlutterActivity

import android.os.Bundle

import com.yandex.mapkit.MapKitFactory;

class MainActivity: FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    MapKitFactory.setLocale("ru-RU") 
     MapKitFactory.setApiKey("27f59aad-979b-400e-9b84-4cb9364903be") 
  }
}
