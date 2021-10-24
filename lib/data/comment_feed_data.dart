import 'package:estacao_inteligente/shared/model/comment_model.dart';
import 'package:estacao_inteligente/shared/model/linha_model.dart';
import 'package:estacao_inteligente/shared/model/user_model.dart';
import 'package:flutter/material.dart';

const CommentFeedData = [
  CommentModel(
    id: 1,
    description: 'descriçao do report',
    typeReport: 'Reclamaçao sobre a bilheteria',
    linha: LinhaModel(
      id: 1,
      name: 'Linha azul',
      description: 'Linha de Metro na CPTM que tem parada na estaçao central',
      color: Colors.blue,
    ),
    user: UserModel(
        name: 'Julia',
        email: 'email@mail.com',
        photoURL: 'https://avatars.githubusercontent.com/u/70731079?s=40&v=4'),
    time: 2,
    resolvido: false,
  ),
  CommentModel(
    id: 3,
    description: 'descriçao do report',
    typeReport: 'Elogio sobre Segurança',
    linha: LinhaModel(
      id: 3,
      name: 'Linha Amarela',
      description: 'Linha de Metro na CPTM que tem parada na estaçao central',
      color: Colors.yellow,
    ),
    user: UserModel(
        name: 'Usuario',
        email: 'email@mail.com',
        photoURL:
            'https://media-exp1.licdn.com/dms/image/C5603AQEK26q6FWEqLQ/profile-displayphoto-shrink_100_100/0/1588786870688?e=1640217600&v=beta&t=glT44vr5xNxyrRKZ70RoDmuKlsp8OgTmz61KfQDCSPk'),
    time: 4,
    resolvido: false,
  ),
  CommentModel(
    id: 1,
    description: 'descriçao do report',
    typeReport: 'Reclamaçao sobre Higiene',
    linha: LinhaModel(
      id: 4,
      name: 'Linha verde',
      description: 'Linha de Metro na CPTM que tem parada na estaçao central',
      color: Colors.green,
    ),
    user: UserModel(
        name: 'name',
        email: 'email',
        photoURL:
            'https://media-exp1.licdn.com/dms/image/C4D03AQHo-cra0WPkXA/profile-displayphoto-shrink_200_200/0/1595622197696?e=1640217600&v=beta&t=esQfhRa9X2DK35AEYeI1LHZXjIhLk9SIvMlGAAYMazU'),
    time: 9,
    resolvido: false,
  ),
  CommentModel(
    id: 1,
    description: 'descriçao do report',
    typeReport: 'Pergunta Sobre Horários',
    linha: LinhaModel(
      id: 6,
      name: 'Linha laranja',
      description: 'Linha de Metro na CPTM que tem parada na estaçao central',
      color: Colors.orange,
    ),
    user: UserModel(
        name: 'name',
        email: 'email',
        photoURL:
            'https://media-exp1.licdn.com/dms/image/C4E03AQGn4cpwdFvXkA/profile-displayphoto-shrink_100_100/0/1632418348585?e=1640217600&v=beta&t=q3Od57190J0BpWglv5GkvYH63BAl8NAEdaL9RPxAkzI'),
    time: 40,
    resolvido: false,
  ),
  CommentModel(
    id: 2,
    description: 'descriçao do report',
    typeReport: 'Denuncia Sobre mecânica',
    linha: LinhaModel(
      id: 2,
      name: 'Linha Vermelha',
      description: 'Linha de Metro na CPTM que tem parada na estaçao central',
      color: Colors.red,
    ),
    user: UserModel(name: 'Usuario', email: 'email@mail.com'),
    time: 42,
    resolvido: false,
  ),
  CommentModel(
    id: 1,
    description: 'descriçao do report',
    typeReport: 'Elogio Sobre Fluxo',
    linha: LinhaModel(
      id: 6,
      name: 'Linha laranja',
      description: 'Linha de Metro na CPTM que tem parada na estaçao central',
      color: Colors.orange,
    ),
    user: UserModel(
      name: 'name',
      email: 'email',
    ),
    time: 59,
    resolvido: false,
  ),
  CommentModel(
    id: 1,
    description: 'descriçao do report',
    typeReport: 'Elogio Sobre Fluxo',
    linha: LinhaModel(
      id: 6,
      name: 'Linha laranja',
      description: 'Linha de Metro na CPTM que tem parada na estaçao central',
      color: Colors.orange,
    ),
    user: UserModel(
        name: 'name',
        email: 'email',
        photoURL:
            'https://images.unsplash.com/photo-1634752418134-5cb9228057e9?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    time: 59,
    resolvido: false,
  ),
  CommentModel(
    id: 1,
    description: 'descriçao do report',
    typeReport: 'Denuncia de Segurança',
    linha: LinhaModel(
      id: 6,
      name: 'Linha laranja',
      description: 'Linha de Metro na CPTM que tem parada na estaçao central',
      color: Colors.orange,
    ),
    user: UserModel(
        name: 'name',
        email: 'email',
        photoURL:
            'https://images.unsplash.com/photo-1634921276502-1a48e7af34b6?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    time: 59,
    resolvido: false,
  ),
  CommentModel(
    id: 1,
    description: 'descriçao do report',
    typeReport: 'Denuncia de Segurança',
    linha: LinhaModel(
      id: 6,
      name: 'Linha laranja',
      description: 'Linha de Metro na CPTM que tem parada na estaçao central',
      color: Colors.orange,
    ),
    user: UserModel(
        name: 'name',
        email: 'email',
        photoURL:
            'https://images.unsplash.com/photo-1634974025644-99b0071575ef?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1MHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    time: 59,
    resolvido: false,
  ),
  CommentModel(
    id: 1,
    description: 'descriçao do report',
    typeReport: 'Reclamaçao sobre a bilheteria',
    linha: LinhaModel(
      id: 1,
      name: 'Linha azul',
      description: 'Linha de Metro na CPTM que tem parada na estaçao central',
      color: Colors.blue,
    ),
    user: UserModel(
        name: 'Julia',
        email: 'email@mail.com',
        photoURL: 'https://avatars.githubusercontent.com/u/70731079?s=40&v=4'),
    time: 2,
    resolvido: false,
  ),
  CommentModel(
    id: 3,
    description: 'descriçao do report',
    typeReport: 'Elogio sobre Segurança',
    linha: LinhaModel(
      id: 3,
      name: 'Linha Amarela',
      description: 'Linha de Metro na CPTM que tem parada na estaçao central',
      color: Colors.yellow,
    ),
    user: UserModel(
        name: 'Usuario',
        email: 'email@mail.com',
        photoURL:
            'https://media-exp1.licdn.com/dms/image/C5603AQEK26q6FWEqLQ/profile-displayphoto-shrink_100_100/0/1588786870688?e=1640217600&v=beta&t=glT44vr5xNxyrRKZ70RoDmuKlsp8OgTmz61KfQDCSPk'),
    time: 4,
    resolvido: false,
  ),
  CommentModel(
    id: 1,
    description: 'descriçao do report',
    typeReport: 'Reclamaçao sobre Higiene',
    linha: LinhaModel(
      id: 4,
      name: 'Linha verde',
      description: 'Linha de Metro na CPTM que tem parada na estaçao central',
      color: Colors.green,
    ),
    user: UserModel(
        name: 'name',
        email: 'email',
        photoURL:
            'https://media-exp1.licdn.com/dms/image/C4D03AQHo-cra0WPkXA/profile-displayphoto-shrink_200_200/0/1595622197696?e=1640217600&v=beta&t=esQfhRa9X2DK35AEYeI1LHZXjIhLk9SIvMlGAAYMazU'),
    time: 9,
    resolvido: false,
  ),
  CommentModel(
    id: 1,
    description: 'descriçao do report',
    typeReport: 'Pergunta Sobre Horários',
    linha: LinhaModel(
      id: 6,
      name: 'Linha laranja',
      description: 'Linha de Metro na CPTM que tem parada na estaçao central',
      color: Colors.orange,
    ),
    user: UserModel(
        name: 'name',
        email: 'email',
        photoURL:
            'https://media-exp1.licdn.com/dms/image/C4E03AQGn4cpwdFvXkA/profile-displayphoto-shrink_100_100/0/1632418348585?e=1640217600&v=beta&t=q3Od57190J0BpWglv5GkvYH63BAl8NAEdaL9RPxAkzI'),
    time: 40,
    resolvido: false,
  ),
  CommentModel(
    id: 2,
    description: 'descriçao do report',
    typeReport: 'Denuncia Sobre mecânica',
    linha: LinhaModel(
      id: 2,
      name: 'Linha Vermelha',
      description: 'Linha de Metro na CPTM que tem parada na estaçao central',
      color: Colors.red,
    ),
    user: UserModel(name: 'Usuario', email: 'email@mail.com'),
    time: 42,
    resolvido: false,
  ),
  CommentModel(
    id: 1,
    description: 'descriçao do report',
    typeReport: 'Elogio Sobre Fluxo',
    linha: LinhaModel(
      id: 6,
      name: 'Linha laranja',
      description: 'Linha de Metro na CPTM que tem parada na estaçao central',
      color: Colors.orange,
    ),
    user: UserModel(
      name: 'name',
      email: 'email',
    ),
    time: 59,
    resolvido: false,
  ),
  CommentModel(
    id: 1,
    description: 'descriçao do report',
    typeReport: 'Elogio Sobre Fluxo',
    linha: LinhaModel(
      id: 6,
      name: 'Linha laranja',
      description: 'Linha de Metro na CPTM que tem parada na estaçao central',
      color: Colors.orange,
    ),
    user: UserModel(
        name: 'name',
        email: 'email',
        photoURL:
            'https://images.unsplash.com/photo-1634752418134-5cb9228057e9?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    time: 59,
    resolvido: false,
  ),
  CommentModel(
    id: 1,
    description: 'descriçao do report',
    typeReport: 'Denuncia de Segurança',
    linha: LinhaModel(
      id: 6,
      name: 'Linha laranja',
      description: 'Linha de Metro na CPTM que tem parada na estaçao central',
      color: Colors.orange,
    ),
    user: UserModel(
        name: 'name',
        email: 'email',
        photoURL:
            'https://images.unsplash.com/photo-1634921276502-1a48e7af34b6?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    time: 59,
    resolvido: false,
  ),
  CommentModel(
    id: 1,
    description: 'descriçao do report',
    typeReport: 'Denuncia de Segurança',
    linha: LinhaModel(
      id: 6,
      name: 'Linha laranja',
      description: 'Linha de Metro na CPTM que tem parada na estaçao central',
      color: Colors.orange,
    ),
    user: UserModel(
        name: 'name',
        email: 'email',
        photoURL:
            'https://images.unsplash.com/photo-1634974025644-99b0071575ef?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1MHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
    time: 59,
    resolvido: false,
  ),
];
