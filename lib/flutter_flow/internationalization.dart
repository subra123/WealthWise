import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'pt'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? ptText = '',
  }) =>
      [enText, ptText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // initial
  {
    'pxfeuk07': {
      'en': 'WealthWise',
      'pt': 'Kitty',
    },
    'd7h63cn1': {
      'en': 'Expenses',
      'pt': 'Despesas',
    },
    '0uznn4nj': {
      'en': 'Balance',
      'pt': 'Saldo',
    },
    'kcpcr69v': {
      'en': 'Income',
      'pt': 'Renda',
    },
    '6z2w3uwy': {
      'en': 'Add new',
      'pt': 'Adicionar novo',
    },
    'zt2nzgpp': {
      'en': 'Home',
      'pt': 'Inicio',
    },
  },
  // report
  {
    'pxio3obv': {
      'en': 'Statistics',
      'pt': 'Estatisticas',
    },
    '27cpwyz9': {
      'en': 'OVERVIEW',
      'pt': 'VISÃO GERAL',
    },
    'ohe1klja': {
      'en': 'DETAILS',
      'pt': 'DETALHES',
    },
    'g0u3eplo': {
      'en': 'Statistics',
      'pt': 'Estatisticas',
    },
  },
  // settings
  {
    '2l9eplby': {
      'en': 'Settings',
      'pt': 'Configurações',
    },
    'r3tu0ri4': {
      'en': 'Joe Doe',
      'pt': 'Joe Doe',
    },
    'cypi8362': {
      'en': 'joedoe@gmail.com',
      'pt': '',
    },
    'z6l4z05o': {
      'en': 'Choose language',
      'pt': 'Selecionar idioma',
    },
    'mclatdop': {
      'en': 'Reset password',
      'pt': 'Trocar senha',
    },
    '9k130f6f': {
      'en': 'Reset password',
      'pt': 'Resetar senha',
    },
    'ytxm8o05': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
    'of5k9y8y': {
      'en': 'Confirm',
      'pt': 'Confirmar',
    },
    'rs270oa8': {
      'en': 'Logout',
      'pt': 'Sair',
    },
    '0x9bn4uq': {
      'en': 'Logout',
      'pt': 'Sair',
    },
    'ayj7zciz': {
      'en': 'Do you really want to get out of Kitty?',
      'pt': 'Deseja realmente sair do Kitty?',
    },
    'u77kd0xv': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
    'x1zlnj43': {
      'en': 'Confirm',
      'pt': 'Confirmar',
    },
    'e5cc1y17': {
      'en': 'Delete account',
      'pt': 'Deletar conta',
    },
    'pao7utco': {
      'en': 'Donate',
      'pt': 'Doação',
    },
    'd3mknvvt': {
      'en': 'Settings',
      'pt': 'Configurações',
    },
  },
  // createExpense
  {
    'fpobmyte': {
      'en': 'Income',
      'pt': 'Renda',
    },
    '9acdjdrd': {
      'en': 'Expense',
      'pt': 'Despesa',
    },
    'u0a7tcan': {
      'en': 'Invoice',
      'pt': 'Renda',
    },
    '3klurzok': {
      'en': 'Income/Budget',
      'pt': 'Renda/Despesa',
    },
    'vy8e0ryy': {
      'en': 'Search for an item...',
      'pt': 'Procurar um item...',
    },
    '9aedrjo6': {
      'en': 'Cafe',
      'pt': 'Cafe',
    },
    'qtnqe1gr': {
      'en': 'Donate',
      'pt': 'Doação',
    },
    '01q69rbk': {
      'en': 'Education',
      'pt': 'Educação',
    },
    'xgex1toh': {
      'en': 'Electronics',
      'pt': 'Eletrônicos',
    },
    'wpbca363': {
      'en': 'Fuel',
      'pt': 'Combustível',
    },
    'k3dp84tb': {
      'en': 'Gifts',
      'pt': 'Presentes',
    },
    '01ofez8y': {
      'en': 'Groceries',
      'pt': 'Mercado',
    },
    'wniujuhd': {
      'en': 'Health',
      'pt': 'Saúde',
    },
    'imwgy8r6': {
      'en': 'Institute',
      'pt': 'Instituto',
    },
    'qkpmudg0': {
      'en': 'Laundry',
      'pt': 'Lavanderia',
    },
    '41nxlk99': {
      'en': 'Liquor',
      'pt': 'Licor',
    },
    'y76rocai': {
      'en': 'Maintenance',
      'pt': 'Manutenção',
    },
    '2g5bblws': {
      'en': 'Party',
      'pt': 'Festa',
    },
    '3x9rfu5h': {
      'en': 'Resturant',
      'pt': 'Restaurante',
    },
    '3755zwmx': {
      'en': 'Savings',
      'pt': 'Poupança',
    },
    'vxa67gbw': {
      'en': 'Self Development',
      'pt': 'Auto desenvolvimento',
    },
    '9megapk5': {
      'en': 'Sport',
      'pt': 'Esporte',
    },
    'cqknees2': {
      'en': 'Transportation',
      'pt': 'Transporte',
    },
    'dnb6be8k': {
      'en': 'Select Category',
      'pt': 'Selecione a Categoria',
    },
    '7trmhkmt': {
      'en': 'Search for an category',
      'pt': 'Pesquisar uma categoria',
    },
    'gwjpp0l1': {
      'en': 'Enter amount',
      'pt': 'Insira o valor',
    },
    'tf6lw3vg': {
      'en': 'Description (Optional)',
      'pt': 'Descrição (opcional)',
    },
    'e0vktzak': {
      'en': 'Add a new',
      'pt': 'Adicionar um novo',
    },
    '58q75359': {
      'en': 'Amount is required',
      'pt': 'O saldo é obrigatório',
    },
    'c842khfl': {
      'en': 'Invalid value for Amount. Ex: 90.50',
      'pt': 'Valor inválido para Saldo. Ex: 90,50',
    },
    'bcchv2ht': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu',
    },
    '0jwizuht': {
      'en': 'Field is required',
      'pt': 'Campo é obrigatório',
    },
    '98ardp74': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu',
    },
    'zhym1v85': {
      'en': 'Add new',
      'pt': 'Adicionar novo',
    },
    'jjce6u3q': {
      'en': 'Home',
      'pt': 'Inicio',
    },
  },
  // login
  {
    'qggdbtg4': {
      'en': 'WealthWise',
      'pt': 'Kitty',
    },
    'kxiutu7a': {
      'en': 'Create Account',
      'pt': 'Criar uma conta',
    },
    'rm2zatw5': {
      'en': 'Create Account',
      'pt': 'Criar uma conta',
    },
    'n4i09wps': {
      'en':
          'Get started by creating your account to secure your data & manage on multiple devices anytime! ',
      'pt':
          'Comece criando sua conta para proteger seus dados e gerenciá-los em vários dispositivos a qualquer momento!',
    },
    'spa5sk3e': {
      'en': 'Email',
      'pt': 'E-mail',
    },
    'jdmcsqhw': {
      'en': 'Password',
      'pt': 'Senha',
    },
    '7uc0edks': {
      'en': 'Confirm password',
      'pt': 'Confirme sua senha',
    },
    '1wjc7ry3': {
      'en': 'Get Started',
      'pt': 'Iniciar',
    },
    'bi2jd10k': {
      'en': 'Or sign up with',
      'pt': 'Ou inscreva-se com',
    },
    'vkxze3wh': {
      'en': 'Continue with Google',
      'pt': 'Continuar com o Google',
    },
    'u6qfqqol': {
      'en': 'Log In',
      'pt': 'Conecte-se',
    },
    'czaqm8sx': {
      'en': 'Welcome Back',
      'pt': 'Bem vindo de volta',
    },
    'x1mua2l2': {
      'en': 'Fill out the information below in order to access your account.',
      'pt': 'Preencha as informações abaixo para acessar sua conta.',
    },
    'iav3i6c0': {
      'en': 'Email',
      'pt': 'E-mail',
    },
    '2y8wc9zo': {
      'en': 'Password',
      'pt': 'Senha',
    },
    '99va8wxa': {
      'en': 'Sign In',
      'pt': 'Entrar',
    },
    'rz5w9yo7': {
      'en': 'Or sign in with',
      'pt': 'Ou entre com',
    },
    'prn3w7mh': {
      'en': 'Continue with Google',
      'pt': 'Continuar com o Google',
    },
    '304zjoo9': {
      'en': 'Forgot Password?',
      'pt': 'Esqueceu sua senha?',
    },
    '3jpxqy42': {
      'en': 'Home',
      'pt': 'Inicio',
    },
  },
  // searchScreen
  {
    'f6qitlvn': {
      'en': 'Search for categories or labels',
      'pt': 'Pesquise por categorias ou descrição',
    },
    'z0p8gblh': {
      'en': 'Home',
      'pt': 'Inicio',
    },
  },
  // editExpense
  {
    'cgf3ygl7': {
      'en': 'Income',
      'pt': 'Renda',
    },
    'fw9vxr1w': {
      'en': 'Expense',
      'pt': 'Despesa',
    },
    'c8ij0gvp': {
      'en': 'Invoice',
      'pt': 'Renda',
    },
    'hko6ezg3': {
      'en': 'Income/Budget',
      'pt': 'Renda/Despesa',
    },
    'vw8adcit': {
      'en': 'Search for an item...',
      'pt': 'Procurar um item...',
    },
    'nr8h2ng1': {
      'en': 'Cafe',
      'pt': 'Cafe',
    },
    'z05440ij': {
      'en': 'Donate',
      'pt': 'Doação',
    },
    '5uh6sul0': {
      'en': 'Education',
      'pt': 'Educação',
    },
    'w5hqz7yh': {
      'en': 'Electronics',
      'pt': 'Eletrônicos',
    },
    '8gw9w48m': {
      'en': 'Fuel',
      'pt': 'Combustível',
    },
    'x9y9xu7k': {
      'en': 'Gifts',
      'pt': 'Presentes',
    },
    'liw1djky': {
      'en': 'Groceries',
      'pt': 'Mercado',
    },
    'nz1ihdqw': {
      'en': 'Health',
      'pt': 'Saúde',
    },
    '80ibmr1j': {
      'en': 'Institute',
      'pt': 'Instituto',
    },
    'yva1sh8h': {
      'en': 'Laundry',
      'pt': 'Lavanderia',
    },
    'nu1fvykc': {
      'en': 'Liquor',
      'pt': 'Licor',
    },
    'bv3dr91r': {
      'en': 'Maintenance',
      'pt': 'Manutenção',
    },
    'etzdfyfa': {
      'en': 'Party',
      'pt': 'Festa',
    },
    '6fyj8k7i': {
      'en': 'Resturant',
      'pt': 'Restaurante',
    },
    '23e13o2q': {
      'en': 'Savings',
      'pt': 'Poupança',
    },
    'ydnrvygz': {
      'en': 'Self Development',
      'pt': 'Auto desenvolvimento',
    },
    '057cd24w': {
      'en': 'Sport',
      'pt': 'Esporte',
    },
    'dbec15tp': {
      'en': 'Transportation',
      'pt': 'Transporte',
    },
    'q8mye2zp': {
      'en': 'Select Category',
      'pt': 'Selecione a Categoria',
    },
    'f0jdrxdm': {
      'en': 'Search for an category',
      'pt': 'Pesquisar uma categoria',
    },
    'ifjlvbhd': {
      'en': 'Enter amount',
      'pt': 'Insira o saldo',
    },
    'vg84m6jc': {
      'en': 'Description (Optional)',
      'pt': 'Descrição (opcional)',
    },
    'rt1ash54': {
      'en': 'Edit',
      'pt': 'Editar',
    },
    'tbhvf5pj': {
      'en': 'Delete',
      'pt': 'Excluir',
    },
    'izjvzi7f': {
      'en': 'Confirm delete',
      'pt': 'Confirmar exclusão',
    },
    'r4m1t0a1': {
      'en': 'Are you sure you want to delete this expense/income?',
      'pt': 'Tem certeza de que deseja excluir esta despesa/receita?',
    },
    '2gh6bfnu': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
    '6bd89nbx': {
      'en': 'Confirm',
      'pt': 'Confirmar',
    },
    'z0ydpuso': {
      'en': 'Amount is required',
      'pt': 'O saldo  é obrigatório',
    },
    '0636u1e0': {
      'en': 'Invalid value for Amount. Ex: 90.50',
      'pt': 'Valor inválido para Valor. Ex: 90,50',
    },
    'ayp6tbzf': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    'b2iwa2um': {
      'en': 'Field is required',
      'pt': 'Campo é obrigatório',
    },
    '9rowbj3s': {
      'en': 'Please choose an option from the dropdown',
      'pt': 'Escolha uma opção no menu suspenso',
    },
    '0rsd07xx': {
      'en': 'Edit',
      'pt': 'Editar',
    },
    'qva4jc6s': {
      'en': 'Home',
      'pt': 'Inicio',
    },
  },
  // month_picker_dialog
  {
    'kitcrcil': {
      'en': 'PICK A MONTH',
      'pt': 'ESCOLHA UM MÊS',
    },
    'oaiocrqj': {
      'en': 'ALL TIME',
      'pt': 'TUDO',
    },
  },
  // user_name_icon
  {
    '6qw7pk5q': {
      'en': 'J',
      'pt': 'M',
    },
  },
  // bottomsheet_change_language
  {
    'jrtdq1pv': {
      'en': 'Select Language',
      'pt': 'Selecione o idioma',
    },
    '8kjbzuvj': {
      'en': 'English',
      'pt': 'Inglês',
    },
    'g0m2mfu7': {
      'en': 'Portuguese',
      'pt': 'Português',
    },
  },
  // alert_dialog_delete_account
  {
    '7glgphlz': {
      'en': 'Delete account',
      'pt': 'Excluir conta',
    },
    'g5dq12gz': {
      'en':
          'Are you sure you want to delete your account? This action cannot be undone.',
      'pt':
          'Tem certeza que deseja excluir sua conta? Essa ação não pode ser desfeita.',
    },
    '3d9jtasu': {
      'en': 'Cancel',
      'pt': 'Cancelar',
    },
    'zfme0zap': {
      'en': 'Confirm',
      'pt': 'Confirmar',
    },
  },
  // Miscellaneous
  {
    'r69iwd0l': {
      'en': '',
      'pt': '',
    },
    'rkyis8o4': {
      'en': '',
      'pt': '',
    },
    'numtrt8f': {
      'en': '',
      'pt': '',
    },
    'wl1usgju': {
      'en': '',
      'pt': '',
    },
    'lm8j8et6': {
      'en': '',
      'pt': '',
    },
    'rnrk0bfd': {
      'en': '',
      'pt': '',
    },
    'j3r89ndo': {
      'en': '',
      'pt': '',
    },
    'x5w2ijmx': {
      'en': '',
      'pt': '',
    },
    'lybzc8c2': {
      'en': '',
      'pt': '',
    },
    '19dnv8il': {
      'en': '',
      'pt': '',
    },
    'zh3lr2vx': {
      'en': '',
      'pt': '',
    },
    'a1xfs6jd': {
      'en': '',
      'pt': '',
    },
    'bbko9ojm': {
      'en': '',
      'pt': '',
    },
    'jgkscrvd': {
      'en': '',
      'pt': '',
    },
    'sik4hrh7': {
      'en': '',
      'pt': '',
    },
    '06rxox15': {
      'en': '',
      'pt': '',
    },
    'r9n52d32': {
      'en': '',
      'pt': '',
    },
    'qcbabdmg': {
      'en': '',
      'pt': '',
    },
    'n1pa6jdj': {
      'en': '',
      'pt': '',
    },
    '7w9n0v0l': {
      'en': '',
      'pt': '',
    },
    'p3i4pkvu': {
      'en': '',
      'pt': '',
    },
    'hfw7zoap': {
      'en': '',
      'pt': '',
    },
    '848m7i32': {
      'en': '',
      'pt': '',
    },
    'v6v3h8su': {
      'en': '',
      'pt': '',
    },
  },
].reduce((a, b) => a..addAll(b));
