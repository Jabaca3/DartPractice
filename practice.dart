void main() {
  print("Hello World!");
  List<int> arr = [1, 2, 3, 4];
  print(arr);
  print("Summation: " + sum(arr[1], arr[2]).toString());
  print("Max comparison: " + max(arr[2], arr[3]).toString());
  print("Max element: " + maxele(arr).toString() + '\n');
  print("Max element: " + maxele([]).toString());
}

//Functions
sum(a, b) => a + b;
max(x, y) => (x > y) ? x : y;

maxele(arr) {
  var currentMax =
      arr.isEmpty ? throw 'Maximal element undefined for empty array' : arr[0];
  for (var i = 0; i < arr.length; i++) {
    currentMax = max(arr[i], currentMax);
  }
  return currentMax;
}
