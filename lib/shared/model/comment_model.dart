import 'package:estacao_inteligente/shared/model/linha_model.dart';
import 'package:estacao_inteligente/shared/model/user_model.dart';

class CommentModel {
  final int id;
  final String description;
  final String typeReport;
  final UserModel? user;
  final LinhaModel? linha;
  final int time;
  final bool resolvido;
  const CommentModel({
    required this.id,
    required this.description,
    required this.typeReport,
    this.user,
    this.linha,
    required this.time,
    required this.resolvido,
  });
}
