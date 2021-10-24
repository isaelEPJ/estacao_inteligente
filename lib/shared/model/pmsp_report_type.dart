import 'package:estacao_inteligente/shared/model/linha_model.dart';
import 'package:estacao_inteligente/shared/model/report_model.dart';
import 'package:estacao_inteligente/shared/model/veiculo_model.dart';

class ReportModelPMSP {
  final int id;
  final String name;
  final String description;
  final Direcionamento direcionamento;
  final LinhaModel? linha;
  final VeiculoModel? veiculo;
  final String status;
  final bool resolvido;
  const ReportModelPMSP({
    required this.id,
    required this.name,
    required this.description,
    this.veiculo,
    this.linha,
    required this.direcionamento,
    required this.status,
    required this.resolvido,
  });
}
