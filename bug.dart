```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response body is a JSON list
      final jsonData = jsonDecode(response.body);
      // The error occurs here if jsonData is not a list
      for (var item in jsonData) {
        print(item['name']); // Accessing 'name' property
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```