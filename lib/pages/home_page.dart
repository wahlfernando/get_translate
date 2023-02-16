import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_translate/translate/translations_keys.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TranslateKey.titleApp.tr),
      ),
      body: Center(
        child: Column(
          children: [
            Text(TranslateKey.welcome.trParams({'name': 'Fernando'})),
            Text(TranslateKey.userListTitleSimple.trPlural(1)),
            Text(TranslateKey.userListTitleSimple.trPlural(2)),
            Text(TranslateKey.userListTitle.trPluralParams(1, {'total': '1'})),
            Text(TranslateKey.userListTitle.trPluralParams(2, {'total': '2'})),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Get.updateLocale(
                const Locale('en', 'US'),
              ),
              child: const Text('Altera para US'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Get.updateLocale(
                const Locale('pt', 'BR'),
              ),
              child: const Text('Altera para BR'),
            )
          ],
        ),
      ),
    );
  }
}
