import 'package:estacao_inteligente/shared/model/linha_model.dart';
import 'package:estacao_inteligente/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class LinheItem extends StatefulWidget {
  final LinhaModel line;
  const LinheItem({Key? key, required this.line}) : super(key: key);

  @override
  State<LinheItem> createState() => _LinheItemState();
}

class _LinheItemState extends State<LinheItem> {
  var mediaItem = ValueNotifier<double>(1);

  mediaVeiculos() {
    var count;
    widget.line.veiculos?.map(
      (v) {
        if (v.capacidade > 0 && v.lotacao > 0 && v.lotacao < v.capacidade) {
          count = (v.capacidade - v.lotacao) / 5;
          mediaItem.value = count;
        } else {
          mediaItem.value = 0000000;
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    if (widget.line.id == 1) {
      mediaItem.value = 290;
    } else if (widget.line.id == 2) {
      mediaItem.value = 260;
    } else if (widget.line.id == 3) {
      mediaItem.value = 240;
    } else if (widget.line.id == 4) {
      mediaItem.value = 220;
    } else if (widget.line.id == 5) {
      mediaItem.value = 200;
    } else if (widget.line.id == 6) {
      mediaItem.value = 160;
    } else if (widget.line.id == 7) {
      mediaItem.value = 140;
    } else if (widget.line.id == 8) {
      mediaItem.value = 100;
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          height: size.height * .045,
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: widget.line.color,
          ),
          width: mediaItem.value,
          margin: EdgeInsets.symmetric(vertical: 5),
          child: Text(
            widget.line.name,
            style: AppTextStyles.normalTextBackground.copyWith(fontSize: 14),
            overflow: TextOverflow.clip,
            maxLines: 1,
            textAlign: TextAlign.end,
          ),
        ),
      ],
    );
  }
}
