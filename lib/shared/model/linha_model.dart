import 'package:estacao_inteligente/shared/model/veiculo_model.dart';
import 'package:flutter/widgets.dart';

class LinhaModel {
  final int id;
  final String name;
  final String description;
  final List<VeiculoModel>? veiculos;
  final Image? image;
  final Color color;
  const LinhaModel({
    required this.id,
    required this.name,
    required this.description,
    this.image,
    this.veiculos,
    required this.color,
  });
}
