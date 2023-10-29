
import 'package:fluttter_tdd_and_clean_arch/domain/repository/weather_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;


@GenerateMocks(
    [
      WeatherRepository
    ] ,
    customMocks: [MockSpec<http.Client>(as : #MockHttpClient)]
)
/// must run this command
/// flutter pub run build_runner build

void main(){



}