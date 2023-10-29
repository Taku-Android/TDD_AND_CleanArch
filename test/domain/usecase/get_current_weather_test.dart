import 'package:dartz/dartz.dart';
import 'package:fluttter_tdd_and_clean_arch/domain/entities/weather_entity.dart';
import 'package:fluttter_tdd_and_clean_arch/domain/usecases/get_current_weather.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.mocks.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late GetCurrentWeatherUseCase sut;
  late MockWeatherRepository mockWeatherRepository;

  setUp(() {
    mockWeatherRepository = MockWeatherRepository();
    sut = GetCurrentWeatherUseCase(mockWeatherRepository);
  });

  const testWeatherModel = WeatherEntity(
    cityName: 'New York',
    main: 'Clouds',
    description: 'few clouds',
    iconCode: '02d',
    temperature: 302.28,
    pressure: 20,
    humidity: 40,
  );

  const testCityName = 'New York' ;


  
  
  
  
  
  
  
  
  
  
  test('should get current weather detail from repository', () async {
    // arrange
    when(mockWeatherRepository.getCurrentWeather(testCityName)).thenAnswer((_) async => const Right(testWeatherModel));
    // act
    final result = await sut.execute(testCityName);
    // assert
    expect(result, const Right(testWeatherModel) );
  });



}
