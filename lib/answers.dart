import 'dart:math';

     List answersList = [
          'ОЧЕНЬ ВЕРОЯТНО',
     'БЕЗУСЛОВНО',
     'БЕЗ СОМНЕНИЙ',
     'ДОЛЖНО БЫТЬ ТАК',
     'АБСОЛЮТНО ТОЧНО',
     'МНЕ КАЖЕТСЯ ДА',
     'ДУХИ ГОВОРЯТ ДА',
     'ПОХОЖЕ, ЧТО ДА',
     'НЕТ',
     'СКОРЕЕ НЕТ',
     'ОТВЕТ НЕТ',
     'НЕ НАДЕЙТЕСЬ',
     'СПРОСИТЕ СНОВА',
     'НЕ МОГУ СКАЗАТЬ',
     'ОТВЕТ НЕ ЯСЕН',
     'ВРЯД ЛИ',
     'СПРОСИТЕ ПОЗЖЕ',
     'МАЛО ШАНСОВ',
     'НЕ ПОХОЖЕ'
     ];

void showRandomAnswer() {
     var randomIndex = Random().nextInt(answersList.length);
     print(answersList[randomIndex]);
}