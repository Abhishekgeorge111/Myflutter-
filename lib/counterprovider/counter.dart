import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{
  int value;
  CounterProvider({
    this.value = 0,
  });
  void incrementcounter(){
    value++;
    notifyListeners();

  }
    void decrementcounter(){
    value--;
    notifyListeners();
    }

    Widget elevatedButton({required Function() onPressed, required String text}){
      return ElevatedButton(
        onPressed: onPressed, 
        child: Text(text));
    }
}