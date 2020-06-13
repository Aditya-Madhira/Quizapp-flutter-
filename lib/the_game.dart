import 'package:flutter/material.dart';
import 'package:trailt/quizlayout.dart';
import 'package:trailt/questions/queslist.dart';

class Game extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute
        .of(context)
        .settings
        .arguments as Map<String, String>;
    final title = args['thetitle'];

    //for witcher
    if (title.contains("Witcher")) {
      return TheGame(title, witcher_list);
    }
    else if (title.contains("Avengers")) {
      return TheGame(title, avengers_list);
    }
    //end
    else if (title.contains("Pokemon")) {
      return TheGame(title, pokemon_list);
    }
    //end
    else if (title.contains("General")) {
      return TheGame(title, general_list);
    }
    //end
    else if (title.contains("Computers")) {
      return TheGame(title, comp_list);
    }
    //end
    else if (title.contains("Hollywood")) {
      return TheGame(title, hollywood_list);
    }
    //end
    else if (title.contains("Animals")) {
      return TheGame(title, animals_list);
    }
    //end
    else if (title.contains("Nature")) {
      return TheGame(title, Nature_list);
    }
    //end
    else if (title.contains("Anime")) {
      return TheGame(title, anime_list);
    }
    //end
    else if (title.contains("Music")) {
      return TheGame(title, music_list);
    }
  }
}

