import 'package:mobx/mobx.dart';

part 'open_search.g.dart';

class Open = OpenSearch with _$Open;

abstract class OpenSearch with Store{

  @observable
  bool isClick = false;

  @observable
  int selectIndex = 0;

  @observable
  bool searchBarIsNotEmpty = false;

  @observable
  bool currentSearch = false;

  @observable
  bool isNotFound = false;

  @action
  void changeClick(bool value){
    isClick = value;
  }

  @action
  void changesearchBarIsNotEmpty(bool value){
    searchBarIsNotEmpty = value;
  }

  @action
  void changeCurrentSearch(bool value){
    currentSearch = value;
  }

  @action
  void changeIsNotFound(bool value){
    isNotFound = value;
  }

  @action
  void toggleIndex(int i){
    selectIndex = i;
    //isClick = true;
  }
}