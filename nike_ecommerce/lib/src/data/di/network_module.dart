import 'package:dio/dio.dart';
import 'package:kiwi/kiwi.dart';

void networkInjector() {
  KiwiContainer().registerFactory<Dio>((container) => Dio());
}
