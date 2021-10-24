import 'package:flutter/widgets.dart';

class FeedController {
  final isFeed = ValueNotifier<bool>(true);

  updateTabBar() {
    isFeed.value = !isFeed.value;
    ChangeNotifier();
  }
}
