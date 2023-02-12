void main(List<String> args) {
  List<int> arr = [5, 1, 3, 4, 9, 8, 6, 3, 1, 5];
  print("${quicksort(arr)} Quicksort");
}

List<int> quicksort(List<int> arr) {
  if (arr.length < 2) return arr;
  List<int> lesser = [];
  List<int> greater = [];
  int pivotIndex = arr.length ~/ 2;
  int pivot = arr.removeAt(pivotIndex);
  for (var e in arr) {
    e > pivot ? greater.add(e) : lesser.add(e);
  }
  return quicksort(lesser) + [pivot] + quicksort(greater);
}
