import 'package:in_app_review/in_app_review.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ReviewManager {
  final InAppReview _inAppReview = InAppReview.instance;
  static const String _reviewFlagKey = 'review_requested';
  static const String _calcCountKey = 'total_calculations_count';

  /// Tracks total calculations and requests an in-app review after 10 (once only)
  Future<void> checkReviewStatus() async {
    final prefs = await SharedPreferences.getInstance();

    // Check if the review has already been requested in the past
    bool alreadyRequested = prefs.getBool(_reviewFlagKey) ?? false;
    if (alreadyRequested) return;

    // Update persistent calculation counter
    int count = (prefs.getInt(_calcCountKey) ?? 0) + 1;
    await prefs.setInt(_calcCountKey, count);

    // Request review once 10 calculations are reached
    if (count >= 10) {
      if (await _inAppReview.isAvailable()) {
        // Using simple print for error tracking as requested
        _inAppReview.requestReview().catchError((e) => print("Review request failed: $e"));
        await prefs.setBool(_reviewFlagKey, true);
      }
    }
  }
}