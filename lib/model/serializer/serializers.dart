

library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:currency_converter/model/currency_base/currency_base_data.dart';
import 'package:currency_converter/model/currency_base/currency_base_model.dart';
import 'package:currency_converter/model/currency_base/currency_base_model.dart';
import 'package:currency_converter/model/currency_converter_model/currency_converter_model.dart';
import 'package:currency_converter/model/currency_rate_model/currency_rete_model_result.dart';
import 'package:currency_converter/model/currency_rate_model/rates.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  CurrencyRateModelResult,
  Rates,
  //CurrencyConverter model
  CurrencyConverterModel,
  //currencyBase model
  CurrencyBaseModel,
  CurrencyBaseData,
])
final Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
