import 'dart:math';

void main() {
  List<int> unsortedArray = [18, 7, 8, 12, 20, 2, 14, 22, 11];
  int noOfBuckets = 5; // Ganti sesuai kebutuhan

  print("Unsorted Array: $unsortedArray");

  bucketSort(unsortedArray, noOfBuckets);

  print("Sorted Array: $unsortedArray");
}

void bucketSort(List<int> arr, int noOfBuckets) {
  int globalMin = arr.reduce((min, current) => current < min ? current : min);
  int globalMax = arr.reduce((max, current) => current > max ? current : max);
  int range = globalMax - globalMin;
  double bucketRange = (range / noOfBuckets).ceilToDouble();

  // Create bucket array
  List<List<int>> buckets = List.generate(noOfBuckets, (index) => []);

  // Assign numbers from array to the proper bucket using a hashing function
  for (int num in arr) {
    int bucketIndex = hash(num, bucketRange.toInt(), noOfBuckets);
    buckets[bucketIndex].add(num);
  }

  // Sort buckets
  for (List<int> bucket in buckets) {
    bucket.sort();
  }

  int idx = 0;
  // Merge buckets to get the sorted array
  for (List<int> bucket in buckets) {
    for (int num in bucket) {
      arr[idx++] = num;
    }
  }
}

int hash(int num, int bucketRange, int noOfBuckets) {
  return (num / bucketRange).floor();
}
