   import 'dart:convert';

  import 'package:http/http.dart' as http;
import 'package:workshopapp/model.dart';
  
  Future<List<Satellite>> fetchSatellites() async {
    final response = await http.get(Uri.parse('https://isro.vercel.app/api/customer_satellites'));
  
    if (response.statusCode == 200) {
      List<Satellite> satellitesList = [];
      List<dynamic> data = json.decode(response.body)['customer_satellites'];
      data.forEach((satellite) {
        satellitesList.add(Satellite.fromJson(satellite));
      });
      return satellitesList;
   } else {
      throw Exception('Failed to load satellites');
    }
  }