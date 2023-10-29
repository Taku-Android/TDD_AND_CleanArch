import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttter_tdd_and_clean_arch/data/models/weather_model.dart';
import 'package:fluttter_tdd_and_clean_arch/domain/entities/weather_entity.dart';

import '../../helpers/json_reader.dart';

void main() {
  late WeatherModel sut;

  setUp(() {
    sut = const WeatherModel(
      cityName: 'New York',
      main: 'Clouds',
      description: 'overcast clouds',
      iconCode: '04n',
      temperature: 287.7,
      pressure: 1020,
      humidity: 64,
    );
  });

  test('should be a subclass of weather entity ', ()async{

    //assert
    expect( sut , isA<WeatherEntity>());

  });

  test('should return a valid model from json', ()async{

    //arrange
    final Map<String , dynamic> jsonMap = json.decode(
      readJson('helpers/dummy_data/dummy_weather_response.json'),
    );

    //act
    final result = WeatherModel.fromJson(jsonMap);

    //assert
    expect(result, equals(sut));



  });
  
  test('should return a json map containing proper data', ()async {

    // act
    final result = sut.toJson();

    //assert
    final expectedJsonMap = {
      'weather': [
        {
          'main': 'Clouds',
          'description': 'overcast clouds',
          'icon': '04n',
        }
      ],
      'main': {
        'temp': 287.7,
        'pressure': 1020,
        'humidity': 64,
      },
      'name': 'New York',
    };

    expect(result, expectedJsonMap);

  });
  
  
}
