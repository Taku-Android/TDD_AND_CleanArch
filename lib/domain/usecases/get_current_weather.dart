import 'package:dartz/dartz.dart';
import 'package:fluttter_tdd_and_clean_arch/core/error/failure.dart';
import 'package:fluttter_tdd_and_clean_arch/domain/entities/weather_entity.dart';
import 'package:fluttter_tdd_and_clean_arch/domain/repository/weather_repository.dart';

class GetCurrentWeatherUseCase{

  final WeatherRepository weatherRepository ;

  GetCurrentWeatherUseCase(this.weatherRepository);

  Future<Either<Failure , WeatherEntity>> execute(String cityName){
    return weatherRepository.getCurrentWeather(cityName);
  }

}