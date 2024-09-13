import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/theme/app_theme.dart';


final colorListProvider = Provider((ref) => colors);

// Un simple boolean
final isDarkmodeProvider = StateProvider((ref) => false);

// Un simple int
final selectedColorProvider = StateProvider((ref) => 0);




final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);


// Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  
  // STATE = Estado = new AppTheme();
  ThemeNotifier(): super( AppTheme() );


  void toggleDarkmode() {
    state = state.copyWith( isDarkmode: !state.isDarkmode  );
  }

  void changeColorIndex( int colorIndex) {
   state = state.copyWith( selectedColor: colorIndex );
  }


}
