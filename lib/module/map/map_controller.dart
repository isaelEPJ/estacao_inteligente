import 'package:estacao_inteligente/module/map/widgets/bottom_sheet_content.dart';
import 'package:flutter/material.dart';

class MapController {
  var isOpen = true;
  void alterisOpen() {
    isOpen != isOpen;
  }

  void openBottomSheet(BuildContext context) {
    showModalBottomSheet(
        elevation: 10,
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return BottomSheetContent();
        });
  }
}
