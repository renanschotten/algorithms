void main(List<String> args) {
  List<int> arr = List.generate(100, (index) => index * 2);
  print(binarySearch(arr, 54));
}

int binarySearch(List<int> arr, int target) {
  int left = 0;
  int right = arr.length;
  while (left <= right) {
    int mid = ((left + right) / 2).truncate();
    if (arr[mid] == target) return mid;
    if (arr[mid] < target) left = mid + 1;
    if (arr[mid] > target) right = mid - 1;
  }
  return -1;
}
