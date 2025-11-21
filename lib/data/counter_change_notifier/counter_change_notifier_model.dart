class CounterModel {
  final int count;

  CounterModel({required this.count});

  CounterModel copyWith({int? count}) =>
      CounterModel(count: count ?? this.count);
}
