import 'package:get/get.dart';

enum TranslateKey {
  titleApp('title_app'),
  welcome('welcome'),
  userListTitleSimple('user_list_title_simple', plural: 'user_list_title_simple_plaural'),
  userListTitle('user_list_title', plural: 'user_list_title_plural');

  final String key;
  final String? plural;

  const TranslateKey(this.key, {this.plural});

  String get tr => key.tr;

  String trParams(Map<String, String> params){
    return key.trParams(params);
  }

  String trPlural(int total){
    if(plural != null){
       return key.trPlural(plural, total);
    }
    return '';
  }

  String trPluralParams(int total, Map<String, String> params){
    if(plural != null){
      return key.trPluralParams(plural, total, params);
    }
    return '';
  }

}

class TranslationsKeys extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'title_app': "GetX Translate",
          'welcome': "Hello @nome",
          'user_list_title_simple': 'User',
          'user_list_title_simple_plaural': 'Users',
          'user_list_title': '@total User',
          'user_list_title_plural': '@total Users',
        },
        'pt_BR': {
          'title_app': "GetX Tradução",
          'welcome': "Olá @nome",
          'user_list_title_simple': 'Usuário',
          'user_list_title_simple_plaural': 'Usuários',
          'user_list_title': '@total Usuário',
          'user_list_title_plural': '@total Usuários',
        },
      };
}
