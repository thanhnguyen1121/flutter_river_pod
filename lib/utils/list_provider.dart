import 'package:river_pod_demo/utils/base.dart';

abstract class ListProvider<V extends UniqueItem>  {
  Map<String, V> items = {};

  final pageLimit = 30;
  int _pageNumber = 0;
  bool _isLastPage = false;
  bool _isLoading = false;

  Future<List<V>> fetchItems(int start, int limit);

  Map<String, V> mapItems(List<V> elements) {
    Map<String, V> results = {};
    for (final element in elements) {
      String? uniqueId = element.uniqueId.toString();
      results[uniqueId] = element;
    }
    return results;
  }

  Future<void> refreshItems() async {
    try {
      if (_isLoading) return;
      _isLoading = true;
      const start = 0;
      final elements = await fetchItems(start, pageLimit);
      final mapped = await mapItems(elements);
      _pageNumber = 1;
      _isLastPage = elements.length < pageLimit;
      items.addAll(mapped);
      _isLoading = false;
    } catch (error) {
      _isLoading = false;
    }
  }

  Future<void> loadMoreItems() async {
    try {
      if (_isLoading || _isLastPage) return;
      _isLoading = true;
      final start = _pageNumber * pageLimit;
      final elements = await fetchItems(start, pageLimit);
      final mapped = mapItems(elements);
      _pageNumber += 1;
      _isLastPage = elements.length < pageLimit;
      items.addAll(mapped);
      _isLoading = false;
    } catch (error) {
      _isLoading = false;
    }
  }
}
