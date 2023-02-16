import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_translate/pages/home_page.dart';
import 'package:get_translate/translate/translations_keys.dart';

late TranslationsKeys translationsKeys;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  translationsKeys = TranslationsKeys();
  await translationsKeys.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Get Translate',
      translations: translationsKeys,
      locale: const Locale('pt', 'BR'),
      fallbackLocale: const Locale('pt', 'BR'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: '/', page: () => const HomePage())
      ],
    );
  }
}
