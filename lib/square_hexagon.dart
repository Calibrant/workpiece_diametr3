import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:workpiece_diametr/custom_drawer.dart';
import 'package:workpiece_diametr/l10n/app_localizations.dart';
import 'package:workpiece_diametr/language_switcher.dart';
import 'package:workpiece_diametr/tf_widget.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workpiece_diametr/unit_provider.dart';
import 'const.dart';
import 'ad_helper.dart';

class SquareAndHexagon extends StatefulWidget {
  const SquareAndHexagon({super.key, required this.title});
  final String title;

  @override
  State<SquareAndHexagon> createState() => _SquareAndHexagonState();
}

class _SquareAndHexagonState extends State<SquareAndHexagon> {
  final _controllers = <TextEditingController>[];
  InterstitialAd? _interstitialAd;
  int _clearPressCount = 0; // Счетчик для показа рекламы и отзыва
  final InAppReview _inAppReview = InAppReview.instance;
  static const String _reviewFlagKey = 'review_requested';
  static const String _reviewCalcCountKey = 'total_calculations_for_review';
  late Image imageWorkpieceDiametr;
  late SharedPreferences _spref1, _spref2;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _isDrawerOpen = false;

  getSharedPref() async {
    _spref1 = await SharedPreferences.getInstance();
    _spref2 = await SharedPreferences.getInstance();
    readFromSquareSpref();
    readFromHexagonSpref();
  }

  saveSquareSpef() {
    List<String> historyOne = historySquare.map((histSquare) => jsonEncode(histSquare.toJson())).toList();
    _spref1.setStringList(kSquareKey, historyOne);
  }

  readFromSquareSpref() {
    List<String>? historyListString = _spref1.getStringList(kSquareKey);
    if (historyListString != null) {
      historySquare = historyListString.map((history) => HistorySquare.fromJson(json.decode(history))).toList();
    }
    setState(() {});
  }

  saveHexagonSpref() {
    List<String> historyTwo = historyHexagon.map((histHexagon) => jsonEncode(histHexagon.toJson())).toList();
    _spref2.setStringList(kHexagonKey, historyTwo);
  }

  readFromHexagonSpref() {
    List<String>? historyListString = _spref2.getStringList(kHexagonKey);
    if (historyListString != null) {
      historyHexagon = historyListString.map((history) => HistoryHexagon.fromJson(json.decode(history))).toList();
    }
    setState(() {});
  }

  clearHistory() async {
    _spref1 = await SharedPreferences.getInstance();
    _spref2 = await SharedPreferences.getInstance();
    await _spref1.clear();
    await _spref2.clear();
    historySquare.clear();
    historyHexagon.clear();
  }

  void onListenerOne() {
    _controllers[0].addListener(() {
      setState(() {
        if (_controllers[0].text.trim().isEmpty) {
          _controllers[2].text = '0.0';
        }
      });
    });
  }

  void onListenerTwo() {
    _controllers[1].addListener(() {
      setState(() {
        if (_controllers[1].text.trim().isEmpty) {
          _controllers[3].text = '0.0';
        }
      });
    });
  }

  void _loadInterstitialAd() {
    InterstitialAd.load(
      adUnitId: AdHelper.interstitialAdUnitId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          ad.fullScreenContentCallback = FullScreenContentCallback(
            onAdDismissedFullScreenContent: (ad) {
              ad.dispose();
              _loadInterstitialAd(); // Pre-load the next ad immediately after closing
            },
            onAdFailedToShowFullScreenContent: (ad, error) {
              ad.dispose();
              _loadInterstitialAd(); // Pre-load the next ad
            },
          );
          _interstitialAd = ad;
          // print('Interstitial Ad Loaded');
        },
        onAdFailedToLoad: (LoadAdError error) {
          //  print('Interstitial Ad failed to load: $error');
          _interstitialAd = null;
        },
      ),
    );
  }

  Future<void> _checkAndRequestReview() async {
    final prefs = await SharedPreferences.getInstance();
    bool alreadyRequested = prefs.getBool(_reviewFlagKey) ?? false;

    if (alreadyRequested) return;

    int totalCalculations = (prefs.getInt(_reviewCalcCountKey) ?? 0) + 1;
    await prefs.setInt(_reviewCalcCountKey, totalCalculations);

    if (totalCalculations >= 10) {
      if (await _inAppReview.isAvailable()) {
        _inAppReview.requestReview().catchError(
              (e) => print("Review request failed: $e"),
            );
        await prefs.setBool(_reviewFlagKey, true);
      } else {
        // print('In-App Review not available');
      }
    }
  }

  void _handleClearPressed() {
    _clearPressCount++;
    if (_clearPressCount % 3 == 0) {
      if (_interstitialAd != null) {
        _interstitialAd!.show();
        _interstitialAd = null;
      } else {
        // print('Interstitial Ad not ready yet, loading new one.');
        _loadInterstitialAd(); // Attempt to reload if it wasn't ready
      }
    }
    _checkAndRequestReview();
  }

  @override
  void initState() {
    imageWorkpieceDiametr = Image.asset(
      imgMainPage,
      scale: 1.25,
    );

    for (var i = 0; i <= 3; i++) {
      _controllers.add(TextEditingController());
    }
    _controllers[2].text = '0.0';
    _controllers[3].text = '0.0';
    onListenerOne();
    onListenerTwo();
    getSharedPref(); // Moved after controller setup
    _loadInterstitialAd(); // Load interstitial ad on init

    super.initState();
  }

  @override
  void didChangeDependencies() {
    precacheImage(imageWorkpieceDiametr.image, context);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    _interstitialAd?.dispose(); // Dispose interstitial ad
    super.dispose(); // Call super.dispose() last
  }

  void _calcSquare(bool isInch) {
    if (_controllers[0].text.trim().isNotEmpty) {
      double a = double.parse(_controllers[0].text);
      if (isInch) a = a * 25.4; // дюймы → мм перед расчётом
      double resultMm = 1.414 * a;
      double resultDisplay = isInch ? resultMm / 25.4 : resultMm;
      _controllers[2].text = resultDisplay.toStringAsFixed(3);
      historySquare.add(HistorySquare(numberOne: _controllers[0].text, result: _controllers[2].text, unit: isInch ? 'in' : 'mm'));
      saveSquareSpef();
    }
  }

  void _calcHexagon(bool isInch) {
    if (_controllers[1].text.trim().isNotEmpty) {
      double b = double.parse(_controllers[1].text);
      if (isInch) b = b * 25.4;
      double resultMm = 1.155 * b;
      double resultDisplay = isInch ? resultMm / 25.4 : resultMm;
      _controllers[3].text = resultDisplay.toStringAsFixed(3);
      historyHexagon.add(HistoryHexagon(numberTwo: _controllers[1].text, result: _controllers[3].text, unit: isInch ? 'in' : 'mm'));
      saveHexagonSpref();
    }
  }

  FilteringTextInputFormatter formatDeny() {
    return FilteringTextInputFormatter.deny(RegExp('[ ,-]'));
  }

  FilteringTextInputFormatter formatAllow() {
    return FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,4}'));
  }

  @override
  Widget build(BuildContext context) {
    final unitProvider = context.watch<UnitProvider>();
    final isInch = unitProvider.currentUnit == AppUnit.inch;

// В build(), после получения unitProvider:
// Сбрасывать поля при смене единицы — безопаснее всего
// Добавь поле в State:
    AppUnit? _lastUnit;

// В build():
    if (_lastUnit != null && _lastUnit != unitProvider.currentUnit) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _controllers[0].clear();
        _controllers[1].clear();
        _controllers[2].text = '0.0';
        _controllers[3].text = '0.0';
      });
    }
    _lastUnit = unitProvider.currentUnit;

    return Scaffold(
        key: _scaffoldKey, // ← добавьте
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xffEEEEEE),
        drawer: const CustomDrawer(),
        onDrawerChanged: (isOpened) {
          // ← добавьте
          setState(() {
            _isDrawerOpen = isOpened;
          });
        },
        appBar: AppBar(
          toolbarHeight: kAppbarHeight,
          title: Row(
            children: [
              Expanded(
                child: Text(
                  maxLines: 3,
                  AppLocalizations.of(context)!.appbar_title,
                  style: const TextStyle(color: Color(0xffEEEEEE), fontSize: 18),
                ),
              ),
            ],
          ),
          actions: const [
            LanguageSwitcherButton(),
            /* IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          const TableBlanksSquareAndHexagon()));
                },
                icon: const Icon(Icons.table_rows)) */
          ],
          elevation: 5,
        ),
        body: SafeArea(
            child: SizedBox(
          height: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const SizedBox(height: 10.0),
                    Align(child: imageWorkpieceDiametr),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('D=1,414⋅a', style: TextStyle(fontSize: 20)),
                        Text('D=1,155⋅b', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    const SizedBox(height: 20.0), //50
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TFWidget(
                            controllers: _controllers[0],
                            onPressed: (value) {
                              setState(() {});
                              _calcSquare(isInch);
                            },

                            prefixText: isInch ? 'a (in)=' : 'a (mm)=', // ← подсказка единицы
                            hintText: AppLocalizations.of(context)!.hinttext_square,
                            inputFormatters: [
                              formatDeny(),
                              formatAllow(),
                            ],
                            onClearPressed: _handleClearPressed, // Добавлено общее управление для первого поля
                          ),
                          TFWidget(
                            controllers: _controllers[1],
                            onPressed: (value) {
                              // This onPressed is actually onChanged
                              setState(() {});
                              _calcHexagon(isInch);
                            },
                            prefixText: isInch ? 'b (in)=' : 'b (mm)=',
                            hintText: AppLocalizations.of(context)!.hinttext_hexagon,
                            inputFormatters: [
                              formatDeny(),
                              formatAllow(),
                            ],
                            onClearPressed: _handleClearPressed, // Pass the clear callback
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 150.0,
                            child: Text('D=${_controllers[2].text} ${isInch ? 'in' : 'mm'}', style: const TextStyle(fontSize: 20)),
                          ),
                          SizedBox(
                            width: 150.0,
                            child: Text('D=${_controllers[3].text} ${isInch ? 'in' : 'mm'}', style: const TextStyle(fontSize: 20)),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                        Text(
                          AppLocalizations.of(context)!.history,
                          style: const TextStyle(fontSize: 16),
                        ),
                        TextButton(
                            style: const ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll<Color>(Color(0xFFE0E0E0)),
                              foregroundColor: WidgetStatePropertyAll<Color>(Color(0xFFFF0055)),
                            ),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext dialogContext) {
                                  return AlertDialog(
                                    title: Text(AppLocalizations.of(context)!.history_clear_confirm_title),
                                    content: Text(AppLocalizations.of(context)!.history_clear_confirm_body),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(dialogContext), // Отмена
                                       child: Text(AppLocalizations.of(context)!.history_cancel),
                                      ),
                                      TextButton(
                                        style: const ButtonStyle(
                                          foregroundColor: WidgetStatePropertyAll<Color>(Color(0xFFFF0055)),
                                        ),
                                        onPressed: () async {
                                          Navigator.pop(dialogContext);
                                          await clearHistory();
                                          setState(() {});
                                        },
                                        child: Text(AppLocalizations.of(context)!.history_clear_confirm),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Text(
                              AppLocalizations.of(context)!.clear,
                              style: const TextStyle(fontSize: 16),
                            )),
                      ]),
                    ),
                    Flexible(
                      child: CustomScrollView(shrinkWrap: true, slivers: [
                        SliverCrossAxisGroup(
                          slivers: [
                            SliverPadding(
                              padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
                              sliver: historySquareSliverList(),
                            ),
                            SliverPadding(
                              padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
                              sliver: historyHexagonSliverList(),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
              // if (!_isDrawerOpen) AdMobBannerSecondary(adUnitId: AdHelper.mainAndTablePage),
            ],
          ),
        )));
  }

  List<HistorySquare> historySquare = [];
  List<HistoryHexagon> historyHexagon = [];

  Widget historySquareSliverList() {
    return DecoratedSliver(
      position: DecorationPosition.background,
      decoration: BoxDecoration(color: Colors.yellow[100]),
      sliver: SliverList.separated(
        itemCount: historySquare.length,
        itemBuilder: (context, index) => SizedBox(
          height: 20,
          child: Center(
            child: FittedBox(
              child: Text('${historySquare[index].numberOne} ${historySquare[index].unit} = ${historySquare[index].result} ${historySquare[index].unit}'),
            ),
          ),
        ),
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }

  Widget historyHexagonSliverList() {
    return DecoratedSliver(
      position: DecorationPosition.background,
      decoration: BoxDecoration(color: Colors.green[200]),
      sliver: SliverList.separated(
        itemCount: historyHexagon.length,
        itemBuilder: (context, index) => SizedBox(
          height: 20,
          child: Center(
            child: FittedBox(
              child: Text('${historyHexagon[index].numberTwo} ${historyHexagon[index].unit} = ${historyHexagon[index].result} ${historyHexagon[index].unit}'),
            ),
          ),
        ),
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}

class HistorySquare {
  final dynamic numberOne, result;
  final String unit; // ← новое поле

  HistorySquare({required this.numberOne, required this.result, required this.unit});
  factory HistorySquare.fromJson(Map<String, dynamic> json) {
    return HistorySquare(
      numberOne: json['numberOne'], result: json['result'],
      unit: json['unit'] ?? 'mm', // ← добавляем чтение единицы, по умолчанию 'mm'
    );
  }

  Map<String, dynamic> toJson() => {
        'numberOne': numberOne,
        'result': result,
        'unit': unit,
      };
}

class HistoryHexagon {
  final dynamic numberTwo, result;
  final String unit; // ← новое поле
  HistoryHexagon({required this.numberTwo, required this.result, required this.unit});

  factory HistoryHexagon.fromJson(Map<String, dynamic> json) {
    return HistoryHexagon(
      numberTwo: json['numberTwo'],
      result: json['result'],
      unit: json['unit'] ?? 'mm',
    );
  }

  Map<String, dynamic> toJson() => {
        'numberTwo': numberTwo,
        'result': result,
        'unit': unit,
      };
}
