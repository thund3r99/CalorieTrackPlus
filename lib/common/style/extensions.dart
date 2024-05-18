extension FirstWhereOrNullExtension<E> on Iterable<E> {
  E? firstWhereOrNull(bool Function(E) test) {
    for (E element in this) {
      if (test(element)) return element;
    }
    return null;
  }

  Iterable<E>? whereOrNull(bool Function(E) test) {
    var matches = <E>[];
    for (var element in this) {
      if (test(element)) matches.add(element);
    }
    return matches.isEmpty ? null : matches;
  }
}