import 'dart:developer';

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
    if (katarNomer < suroolorJooptor.length) {
      return suroolorJooptor[katarNomer].suroolor;
    }
    return '';
  }

  bool joopAlipKel() {
    if (katarNomer < suroolorJooptor.length) {
      return suroolorJooptor[katarNomer].jooptor;
    }
    return null;
  }

  void suroonuOtkoz() {
    katarNomer = katarNomer + 1;
    log('katarNomer ====> $katarNomer');
    // katarNomer++;
  }

  void reset() {
    katarNomer = 0;
  }
}

final LocalData localData = LocalData();
