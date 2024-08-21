// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_search.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Open on OpenSearch, Store {
  late final _$isClickAtom = Atom(name: 'OpenSearch.isClick', context: context);

  @override
  bool get isClick {
    _$isClickAtom.reportRead();
    return super.isClick;
  }

  @override
  set isClick(bool value) {
    _$isClickAtom.reportWrite(value, super.isClick, () {
      super.isClick = value;
    });
  }

  late final _$selectIndexAtom =
      Atom(name: 'OpenSearch.selectIndex', context: context);

  @override
  int get selectIndex {
    _$selectIndexAtom.reportRead();
    return super.selectIndex;
  }

  @override
  set selectIndex(int value) {
    _$selectIndexAtom.reportWrite(value, super.selectIndex, () {
      super.selectIndex = value;
    });
  }

  late final _$searchBarIsNotEmptyAtom =
      Atom(name: 'OpenSearch.searchBarIsNotEmpty', context: context);

  @override
  bool get searchBarIsNotEmpty {
    _$searchBarIsNotEmptyAtom.reportRead();
    return super.searchBarIsNotEmpty;
  }

  @override
  set searchBarIsNotEmpty(bool value) {
    _$searchBarIsNotEmptyAtom.reportWrite(value, super.searchBarIsNotEmpty, () {
      super.searchBarIsNotEmpty = value;
    });
  }

  late final _$currentSearchAtom =
      Atom(name: 'OpenSearch.currentSearch', context: context);

  @override
  bool get currentSearch {
    _$currentSearchAtom.reportRead();
    return super.currentSearch;
  }

  @override
  set currentSearch(bool value) {
    _$currentSearchAtom.reportWrite(value, super.currentSearch, () {
      super.currentSearch = value;
    });
  }

  late final _$isNotFoundAtom =
      Atom(name: 'OpenSearch.isNotFound', context: context);

  @override
  bool get isNotFound {
    _$isNotFoundAtom.reportRead();
    return super.isNotFound;
  }

  @override
  set isNotFound(bool value) {
    _$isNotFoundAtom.reportWrite(value, super.isNotFound, () {
      super.isNotFound = value;
    });
  }

  late final _$OpenSearchActionController =
      ActionController(name: 'OpenSearch', context: context);

  @override
  void changeClick(bool value) {
    final _$actionInfo = _$OpenSearchActionController.startAction(
        name: 'OpenSearch.changeClick');
    try {
      return super.changeClick(value);
    } finally {
      _$OpenSearchActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changesearchBarIsNotEmpty(bool value) {
    final _$actionInfo = _$OpenSearchActionController.startAction(
        name: 'OpenSearch.changesearchBarIsNotEmpty');
    try {
      return super.changesearchBarIsNotEmpty(value);
    } finally {
      _$OpenSearchActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCurrentSearch(bool value) {
    final _$actionInfo = _$OpenSearchActionController.startAction(
        name: 'OpenSearch.changeCurrentSearch');
    try {
      return super.changeCurrentSearch(value);
    } finally {
      _$OpenSearchActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeIsNotFound(bool value) {
    final _$actionInfo = _$OpenSearchActionController.startAction(
        name: 'OpenSearch.changeIsNotFound');
    try {
      return super.changeIsNotFound(value);
    } finally {
      _$OpenSearchActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleIndex(int i) {
    final _$actionInfo = _$OpenSearchActionController.startAction(
        name: 'OpenSearch.toggleIndex');
    try {
      return super.toggleIndex(i);
    } finally {
      _$OpenSearchActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isClick: ${isClick},
selectIndex: ${selectIndex},
searchBarIsNotEmpty: ${searchBarIsNotEmpty},
currentSearch: ${currentSearch},
isNotFound: ${isNotFound}
    ''';
  }
}
