```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      if (jsonData is List) {
        for (var item in jsonData) {
          //Make sure to check if item is a Map before accessing its properties
          if(item is Map && item.containsKey('name')){
            print(item['name']);
          } else {
            print('Invalid item in list: $item');
          }
        }
      } else if (jsonData is Map) {
        print('JSON is a Map: $jsonData');
      } else {
        print('Unexpected JSON response type: $jsonData');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```