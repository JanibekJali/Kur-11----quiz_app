import 'package:quiz_app/models/quiz_model.dart';

class LocalData {
  int katarNomer = 0;
  List<QuizModel> suroolorJooptor = [
    QuizModel(
      suroolor: 'Кыргызстанда 7 область барбы?',
      jooptor: true,
    ),
    QuizModel(
      suroolor: 'Ozgon Batkenge karait?',
      jooptor: false,
    ),
    QuizModel(
      suroolor: 'Oshto arka barby?',
      jooptor: true,
    ),
  ];
  String surooAlipKel() {
    return suroolorJooptor[katarNomer].suroolor;
  }

  bool joopAlipKel() {
    return suroolorJooptor[katarNomer].jooptor;
  }
}
