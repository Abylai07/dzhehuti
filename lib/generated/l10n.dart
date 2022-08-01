// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Statistics`
  String get statistics {
    return Intl.message(
      'Statistics',
      name: 'statistics',
      desc: '',
      args: [],
    );
  }

  /// `Quotas`
  String get quotas {
    return Intl.message(
      'Quotas',
      name: 'quotas',
      desc: '',
      args: [],
    );
  }

  /// `Poll`
  String get poll {
    return Intl.message(
      'Poll',
      name: 'poll',
      desc: '',
      args: [],
    );
  }

  /// `Satisfaction with mobile communication`
  String get satisfactionWithMobileCommunication {
    return Intl.message(
      'Satisfaction with mobile communication',
      name: 'satisfactionWithMobileCommunication',
      desc: '',
      args: [],
    );
  }

  /// `Meaning`
  String get meaning {
    return Intl.message(
      'Meaning',
      name: 'meaning',
      desc: '',
      args: [],
    );
  }

  /// `Left`
  String get left {
    return Intl.message(
      'Left',
      name: 'left',
      desc: '',
      args: [],
    );
  }

  /// `Full interview`
  String get fullInterview {
    return Intl.message(
      'Full interview',
      name: 'fullInterview',
      desc: '',
      args: [],
    );
  }

  /// `Men`
  String get men {
    return Intl.message(
      'Men',
      name: 'men',
      desc: '',
      args: [],
    );
  }

  /// `Women`
  String get women {
    return Intl.message(
      'Women',
      name: 'women',
      desc: '',
      args: [],
    );
  }

  /// `Polls`
  String get polls {
    return Intl.message(
      'Polls',
      name: 'polls',
      desc: '',
      args: [],
    );
  }

  /// `Login: `
  String get login {
    return Intl.message(
      'Login: ',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Options`
  String get options {
    return Intl.message(
      'Options',
      name: 'options',
      desc: '',
      args: [],
    );
  }

  /// `Poll Options`
  String get pollOptions {
    return Intl.message(
      'Poll Options',
      name: 'pollOptions',
      desc: '',
      args: [],
    );
  }

  /// `Geolocation`
  String get geolocation {
    return Intl.message(
      'Geolocation',
      name: 'geolocation',
      desc: '',
      args: [],
    );
  }

  /// `Audio recording`
  String get audioRecording {
    return Intl.message(
      'Audio recording',
      name: 'audioRecording',
      desc: '',
      args: [],
    );
  }

  /// `Sync Options`
  String get syncOptions {
    return Intl.message(
      'Sync Options',
      name: 'syncOptions',
      desc: '',
      args: [],
    );
  }

  /// `Total Questionnaires`
  String get totalQuestionnaires {
    return Intl.message(
      'Total Questionnaires',
      name: 'totalQuestionnaires',
      desc: '',
      args: [],
    );
  }

  /// `Synchronized`
  String get synchronized {
    return Intl.message(
      'Synchronized',
      name: 'synchronized',
      desc: '',
      args: [],
    );
  }

  /// `To be synchronized`
  String get toBeSynchronized {
    return Intl.message(
      'To be synchronized',
      name: 'toBeSynchronized',
      desc: '',
      args: [],
    );
  }

  /// `Synchronize`
  String get synchronize {
    return Intl.message(
      'Synchronize',
      name: 'synchronize',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password?`
  String get forgotYourPassword {
    return Intl.message(
      'Forgot your password?',
      name: 'forgotYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru', countryCode: 'RU'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
