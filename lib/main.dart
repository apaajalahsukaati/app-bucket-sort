import 'package:flutter/material.dart';
import 'bucketsort.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bucket Sort Flutter App'),
        ),
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<int> unsortedArray = [18, 7, 8, 12, 20, 2, 14, 22, 11];
    List<int> sortedArray = bucketSort(unsortedArray);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Unsorted Array: $unsortedArray',
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(height: 20),
        Text(
          'Sorted Array: $sortedArray',
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}

List<int> bucketSort(List<int> arr) {
  // Implementasi bucket sort di sini (seperti kode sebelumnya)
  // ...

  return arr;
}
