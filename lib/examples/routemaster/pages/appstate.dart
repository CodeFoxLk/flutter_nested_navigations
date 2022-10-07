import 'package:flutter/cupertino.dart';

class AppState extends ChangeNotifier{
  int? _currentTabIndex;
  void onChangeAppState(int? index){
    _currentTabIndex = index;
    notifyListeners();
  }

  int? get curruntTabIndex => _currentTabIndex;

  
}