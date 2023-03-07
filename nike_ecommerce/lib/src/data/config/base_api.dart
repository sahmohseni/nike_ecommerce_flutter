import 'package:flutter/cupertino.dart';
import 'package:kiwi/kiwi.dart';
import 'package:nike_ecommerce/src/data/config/api_service/api_service.dart';

abstract class BaseApi {
  @protected
  final baseApi = KiwiContainer().resolve<ApiService>();
}
