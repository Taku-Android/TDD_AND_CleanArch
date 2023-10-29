import 'package:dartz/dartz.dart';
import 'package:fluttter_tdd_and_clean_arch/core/error/failure.dart';
import 'package:fluttter_tdd_and_clean_arch/domain/entities/weather_entity.dart';

abstract class WeatherRepository {
  Future<Either<Failure, WeatherEntity>> getCurrentWeather(String cityName);
}
