import 'package:flutter/widgets.dart';

class VeiculoModel {
  final int id;
  final String name;
  final String description;
  final Image? image;
  final int velocidade;
  final int capacidade;
  final int lotacao;
  final bool ativo;
  const VeiculoModel({
    required this.id,
    required this.name,
    required this.description,
    this.image,
    required this.velocidade,
    required this.capacidade,
    required this.lotacao,
    required this.ativo,
  });
}
