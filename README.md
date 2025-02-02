# Dart: Handling Unexpected JSON Response Types

This repository demonstrates a common error in Dart when working with JSON responses from APIs and provides a solution for robust error handling.

## The Problem
The `bug.dart` file contains code that attempts to iterate over a JSON response, assuming it's always a list.  If the API returns a different data structure (e.g., an object, an empty response, or a malformed JSON), the code will throw an error. This is a common scenario that often goes unnoticed during development.

## The Solution
The `bugSolution.dart` file presents a more robust solution that checks the type of the JSON response before attempting to access its elements. It handles various potential scenarios, including empty responses and non-list data types gracefully.

## How to Run
1. Clone this repository.
2. Ensure you have Dart and the `http` package installed (`pub get`).
3. Run the code using `dart run bug.dart` (for the buggy version) and `dart run bugSolution.dart` (for the fixed version).