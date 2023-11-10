import 'package:flutter/material.dart';
import 'package:word_find_app/components/alert_dialog.dart';
import 'package:word_find_app/components/exit_model.dart';
import 'package:word_find_app/components/grid_view_word.dart';
import 'package:word_find_app/components/winner.dart';
import 'package:word_find_app/components/word_search_widget.dart';
import 'package:word_find_app/model/word_search_model.dart';
import 'package:word_find_app/start_screen.dart';
import 'package:word_find_app/task_screen.dart';

import 'home_screen.dart';

void main() {
  runApp( MaterialApp(
    theme: ThemeData(
      fontFamily: 'Nunito',
    ),
    home: HomeScreen())
  );
}


