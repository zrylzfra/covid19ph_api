import 'package:covid19ph_api/widgets/data/data.dart';
import 'package:http/http.dart' as http;

class CasesCovid19PH {
  static const String url =
      'https://covid19.mathdro.id/api/countries/Philippines/confirmed';

  static Future<List<Cases>> getCases() async {
    try {
      final res = await http.get(url);
      if (200 == res.statusCode) {
        final List<Cases> cases = casesFromJson(res.body);
        return cases;
      } else {
        return List<Cases>();
      }
    } catch (e) {
      return List<Cases>();
    }
  }
}
