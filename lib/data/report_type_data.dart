import 'package:estacao_inteligente/shared/model/report_model.dart';

const ReportType = [
  ReportModel(
    id: 1,
    name: 'Sugerir algo',
    description: 'description',
    direcionamento: Direcionamento.cptm,
    status: 'assets/images/project/bulb-dynamic-color.png',
    resolvido: false,
  ),
  ReportModel(
    id: 2,
    name: 'Fazer uma Denuncia',
    description: 'description',
    direcionamento: Direcionamento.cptm,
    status: 'assets/images/project/megaphone-dynamic-color.png',
    resolvido: false,
  ),
  ReportModel(
    id: 3,
    name: 'Perguntar sobre algo',
    description: 'assets/images/project/icon_pergunta.png',
    direcionamento: Direcionamento.cptm,
    status: 'assets/images/project/zoom-dynamic-color.png',
    resolvido: false,
  ),
  ReportModel(
    id: 4,
    name: 'Fazer um elogio',
    description: 'assets/images/project/icon_elogio.png',
    direcionamento: Direcionamento.cptm,
    status: 'assets/images/project/thumb-up-dynamic-color.png',
    resolvido: false,
  ),
  ReportModel(
    id: 5,
    name: 'Fazer uma reclamação',
    description: 'description',
    direcionamento: Direcionamento.cptm,
    status: 'assets/images/project/fire-dynamic-color.png',
    resolvido: false,
  ),
];
