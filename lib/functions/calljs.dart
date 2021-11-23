@JS()
library calljs;
import 'package:js/js.dart';

void calltest(){
  print('Hello');
  test();
}

@JS()
external void test();