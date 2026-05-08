import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fil.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_lo.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fil'),
    Locale('fr'),
    Locale('hi'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('lo'),
    Locale('ms'),
    Locale('nl'),
    Locale('pl'),
    Locale('pt'),
    Locale('ru'),
    Locale('sv'),
    Locale('sw'),
    Locale('tr'),
    Locale('vi'),
    Locale('zh')
  ];

  /// No description provided for @main_title.
  ///
  /// In en, this message translates to:
  /// **'Workpiece diameter'**
  String get main_title;

  /// No description provided for @appbar_title.
  ///
  /// In en, this message translates to:
  /// **'Workpiece Diameter Calculator'**
  String get appbar_title;

  /// No description provided for @appbar_table.
  ///
  /// In en, this message translates to:
  /// **'Table of workpiece diameters in mm'**
  String get appbar_table;

  /// No description provided for @hinttext_square.
  ///
  /// In en, this message translates to:
  /// **'square'**
  String get hinttext_square;

  /// No description provided for @hinttext_hexagon.
  ///
  /// In en, this message translates to:
  /// **'hexagon'**
  String get hinttext_hexagon;

  /// No description provided for @drawer_header.
  ///
  /// In en, this message translates to:
  /// **'Workpiece Diameter'**
  String get drawer_header;

  /// No description provided for @drawer_title_rate.
  ///
  /// In en, this message translates to:
  /// **'Rate this app'**
  String get drawer_title_rate;

  /// No description provided for @drawer_title_privacy.
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get drawer_title_privacy;

  /// No description provided for @history.
  ///
  /// In en, this message translates to:
  /// **'History:'**
  String get history;

  /// No description provided for @clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// No description provided for @feedback.
  ///
  /// In en, this message translates to:
  /// **'Feedback'**
  String get feedback;

  /// No description provided for @menu_how_it_works.
  ///
  /// In en, this message translates to:
  /// **'How it works'**
  String get menu_how_it_works;

  /// No description provided for @menu_glossary.
  ///
  /// In en, this message translates to:
  /// **'Glossary'**
  String get menu_glossary;

  /// No description provided for @title_how_it_works.
  ///
  /// In en, this message translates to:
  /// **'How It Works'**
  String get title_how_it_works;

  /// No description provided for @title_glossary.
  ///
  /// In en, this message translates to:
  /// **'Glossary'**
  String get title_glossary;

  /// No description provided for @select_language.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get select_language;

  /// No description provided for @hint_change_language.
  ///
  /// In en, this message translates to:
  /// **'Tap to change language'**
  String get hint_change_language;

  /// No description provided for @btn_open_calculator.
  ///
  /// In en, this message translates to:
  /// **'Open Calculator →'**
  String get btn_open_calculator;

  /// No description provided for @section_square_title.
  ///
  /// In en, this message translates to:
  /// **'Square Shaping — Step by Step'**
  String get section_square_title;

  /// No description provided for @section_square_body.
  ///
  /// In en, this message translates to:
  /// **'Step 1: Measure the side (a) of your square in mm\nStep 2: Apply formula: D = a × 1.414\nStep 3: Result is the minimum workpiece diameter\n\nExample: a = 10 mm → D = 14.14 mm\n\nWhy 1.414?\nThis is √2 — the diagonal of a unit square.\nThe workpiece must fully contain the square diagonal.'**
  String get section_square_body;

  /// No description provided for @section_hex_title.
  ///
  /// In en, this message translates to:
  /// **'Hexagon Shaping — Step by Step'**
  String get section_hex_title;

  /// No description provided for @section_hex_body.
  ///
  /// In en, this message translates to:
  /// **'Step 1: Measure flat-to-flat distance (b) in mm\nStep 2: Apply formula: D = b × 1.155\nStep 3: Result is the minimum workpiece diameter\n\nExample: b = 10 mm → D = 11.55 mm\n\nWhy 1.155?\nThis is 2/√3 — derived from hexagon geometry.\nThe workpiece must contain the full hexagon width.'**
  String get section_hex_body;

  /// No description provided for @section_mistakes_title.
  ///
  /// In en, this message translates to:
  /// **'Common Mistakes'**
  String get section_mistakes_title;

  /// No description provided for @section_mistakes_body.
  ///
  /// In en, this message translates to:
  /// **'• Do not confuse diameter with radius\n• Always measure flat-to-flat, not corner-to-corner\n• Add machining allowance (0.5–2 mm) to result\n• Formula gives minimum diameter — always round up'**
  String get section_mistakes_body;

  /// No description provided for @term_01_title.
  ///
  /// In en, this message translates to:
  /// **'Workpiece'**
  String get term_01_title;

  /// No description provided for @term_01_body.
  ///
  /// In en, this message translates to:
  /// **'The raw material piece (usually cylindrical) before any machining operation is performed.'**
  String get term_01_body;

  /// No description provided for @term_02_title.
  ///
  /// In en, this message translates to:
  /// **'Diameter (D)'**
  String get term_02_title;

  /// No description provided for @term_02_body.
  ///
  /// In en, this message translates to:
  /// **'The distance across a circle measured through its center. Used to define workpiece size.'**
  String get term_02_body;

  /// No description provided for @term_03_title.
  ///
  /// In en, this message translates to:
  /// **'Square Shaping'**
  String get term_03_title;

  /// No description provided for @term_03_body.
  ///
  /// In en, this message translates to:
  /// **'A machining process that cuts a round workpiece into a square cross-section profile.'**
  String get term_03_body;

  /// No description provided for @term_04_title.
  ///
  /// In en, this message translates to:
  /// **'Hexagon Shaping'**
  String get term_04_title;

  /// No description provided for @term_04_body.
  ///
  /// In en, this message translates to:
  /// **'A machining process that cuts a round workpiece into a regular hexagonal cross-section profile.'**
  String get term_04_body;

  /// No description provided for @term_05_title.
  ///
  /// In en, this message translates to:
  /// **'Allowance'**
  String get term_05_title;

  /// No description provided for @term_05_body.
  ///
  /// In en, this message translates to:
  /// **'Extra material intentionally left on the workpiece surface for subsequent finishing cuts.'**
  String get term_05_body;

  /// No description provided for @term_06_title.
  ///
  /// In en, this message translates to:
  /// **'Tolerance'**
  String get term_06_title;

  /// No description provided for @term_06_body.
  ///
  /// In en, this message translates to:
  /// **'The permissible range of variation in a dimension. Example: 10mm ± 0.1mm means 9.9–10.1mm is acceptable.'**
  String get term_06_body;

  /// No description provided for @term_07_title.
  ///
  /// In en, this message translates to:
  /// **'Turning'**
  String get term_07_title;

  /// No description provided for @term_07_body.
  ///
  /// In en, this message translates to:
  /// **'A machining operation where the workpiece rotates against a stationary cutting tool on a lathe.'**
  String get term_07_body;

  /// No description provided for @term_08_title.
  ///
  /// In en, this message translates to:
  /// **'Lathe'**
  String get term_08_title;

  /// No description provided for @term_08_body.
  ///
  /// In en, this message translates to:
  /// **'A machine tool that rotates the workpiece to perform turning, facing, and diameter reduction operations.'**
  String get term_08_body;

  /// No description provided for @term_09_title.
  ///
  /// In en, this message translates to:
  /// **'Feed Rate'**
  String get term_09_title;

  /// No description provided for @term_09_body.
  ///
  /// In en, this message translates to:
  /// **'The speed at which the cutting tool advances along the workpiece, measured in mm per revolution.'**
  String get term_09_body;

  /// No description provided for @term_10_title.
  ///
  /// In en, this message translates to:
  /// **'Cutting Depth'**
  String get term_10_title;

  /// No description provided for @term_10_body.
  ///
  /// In en, this message translates to:
  /// **'The thickness of material removed in a single pass of the cutting tool.'**
  String get term_10_body;

  /// No description provided for @term_11_title.
  ///
  /// In en, this message translates to:
  /// **'Surface Finish'**
  String get term_11_title;

  /// No description provided for @term_11_body.
  ///
  /// In en, this message translates to:
  /// **'The texture and smoothness of a machined surface, measured in Ra (roughness average) micrometers.'**
  String get term_11_body;

  /// No description provided for @term_12_title.
  ///
  /// In en, this message translates to:
  /// **'√2 (Square root of 2)'**
  String get term_12_title;

  /// No description provided for @term_12_body.
  ///
  /// In en, this message translates to:
  /// **'Mathematical constant ≈ 1.414. Used in square shaping formula: D = a × √2.'**
  String get term_12_body;

  /// No description provided for @term_13_title.
  ///
  /// In en, this message translates to:
  /// **'2/√3'**
  String get term_13_title;

  /// No description provided for @term_13_body.
  ///
  /// In en, this message translates to:
  /// **'Mathematical constant ≈ 1.155. Used in hexagon shaping formula: D = b × 2/√3.'**
  String get term_13_body;

  /// No description provided for @term_14_title.
  ///
  /// In en, this message translates to:
  /// **'Machining Allowance'**
  String get term_14_title;

  /// No description provided for @term_14_body.
  ///
  /// In en, this message translates to:
  /// **'Additional diameter added to the calculated minimum to compensate for tool wear and surface imperfections. Typically 0.5–2.0 mm.'**
  String get term_14_body;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'de', 'en', 'es', 'fil', 'fr', 'hi', 'id', 'it', 'ja', 'ko', 'lo', 'ms', 'nl', 'pl', 'pt', 'ru', 'sv', 'sw', 'tr', 'vi', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'de': return AppLocalizationsDe();
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
    case 'fil': return AppLocalizationsFil();
    case 'fr': return AppLocalizationsFr();
    case 'hi': return AppLocalizationsHi();
    case 'id': return AppLocalizationsId();
    case 'it': return AppLocalizationsIt();
    case 'ja': return AppLocalizationsJa();
    case 'ko': return AppLocalizationsKo();
    case 'lo': return AppLocalizationsLo();
    case 'ms': return AppLocalizationsMs();
    case 'nl': return AppLocalizationsNl();
    case 'pl': return AppLocalizationsPl();
    case 'pt': return AppLocalizationsPt();
    case 'ru': return AppLocalizationsRu();
    case 'sv': return AppLocalizationsSv();
    case 'sw': return AppLocalizationsSw();
    case 'tr': return AppLocalizationsTr();
    case 'vi': return AppLocalizationsVi();
    case 'zh': return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
