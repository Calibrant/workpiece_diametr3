import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:workpiece_diametr/l10n/app_localizations.dart';
import 'package:workpiece_diametr/updated_data_table.dart';
import 'ad_helper.dart';
import 'const.dart';

class TableBlanksSquareAndHexagon extends StatefulWidget {
  const TableBlanksSquareAndHexagon({super.key});

  @override
  State<TableBlanksSquareAndHexagon> createState() =>
      _TableBlanksSquareAndHexagonState();
}

class _TableBlanksSquareAndHexagonState
    extends State<TableBlanksSquareAndHexagon> {
  late Image imageTwo;
  late BannerAd _bottomBannerAd;
  bool _isBottomBannerAdLoaded = false;

  ScrollController scrollController = ScrollController();
  bool showbtn = false;

  void _createBottomBannerAd() {
    _bottomBannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            _isBottomBannerAdLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
        },
      ),
    );
    _bottomBannerAd.load();
  }

  @override
  void initState() {
    imageTwo = Image.asset(imgPage2);
    _createBottomBannerAd();

    scrollController.addListener(() {
      double showoffset = 10.0;

      if (scrollController.offset > showoffset) {
        showbtn = true;
        setState(() {});
      } else {
        showbtn = false;
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  void didChangeDependencies() {
    precacheImage(imageTwo.image, context);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _bottomBannerAd.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(
          colorScheme: Theme.of(context)
              .colorScheme
              .copyWith(primary: const Color(0xff222831))),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: ScrollConfiguration(
          behavior: const ScrollBehavior(),
          child: Scaffold(
            bottomNavigationBar: _isBottomBannerAdLoaded
                ? SizedBox(
                    height: _bottomBannerAd.size.height.toDouble(),
                    width: _bottomBannerAd.size.width.toDouble(),
                    child: AdWidget(ad: _bottomBannerAd),
                  )
                : null,
            backgroundColor: const Color(0xffEEEEEE),
            appBar: (AppBar(
              toolbarHeight: kAppbarHeight,
              title: Row(
                children: [
                  Expanded(
                    child: Text(
                      maxLines: 3,
                      AppLocalizations.of(context)!.appbar_table,
                      style: const TextStyle(
                          color: Color(0xffEEEEEE), fontSize: 18),
                    ),
                  ),
                ],
              ),
              leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back)),
            )),
            body: Container(
              height: 900,
              decoration: const BoxDecoration(),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(child: imageTwo),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const UpdatedDataTable(),
                    ],
                  ),
                ),
              ),
            ),
            floatingActionButton: AnimatedOpacity(
              duration:
                  const Duration(milliseconds: 1000), //show/hide animation
              opacity:
                  showbtn ? 1.0 : 0.0, //set obacity to 1 on visible, or hide
              child: FloatingActionButton(
                onPressed: () {
                  scrollController.animateTo(
                      //go to top of scroll
                      0, //scroll offset to go
                      duration: const Duration(
                          milliseconds: 500), //duration of scroll
                      curve: Curves.fastOutSlowIn //scroll type
                      );
                },
                backgroundColor: Colors.amber[700],
                child: const Icon(Icons.arrow_upward),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
