import 'package:corelab_app_challenge/screens/widgets/tabs/tab_categorys.dart';
import 'package:corelab_app_challenge/screens/widgets/tabs/tab_current_search.dart';
import 'package:corelab_app_challenge/screens/widgets/tabs/tab_home.dart';
import 'package:corelab_app_challenge/screens/widgets/tabs/tab_latest_searches.dart';
import 'package:corelab_app_challenge/screens/widgets/modified_text_button.dart';
import 'package:corelab_app_challenge/screens/widgets/tabs/tab_not_found.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../controller/open_search.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController textEditingController = TextEditingController();

  int currentPageIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    if(index < 2) openSearch.toggleIndex(index);

    if(index == 1){
      openSearch.changeCurrentSearch(false);
      openSearch.changeClick(false);
      openSearch.changeIsNotFound(false);
      openSearch.changesearchBarIsNotEmpty(false);
      textEditingController.text = "";
    }
  }

  final List<Widget> _listOfTabs = <Widget>[
    TabHome(),
    const TabCategorys(),
  ];

  Open openSearch = Open();

  TextField _searchBar() {
    return TextField(
      onTap: () {
        openSearch.changeClick(true);
        if (openSearch.currentSearch) {
          openSearch.changeCurrentSearch(false);
        }
      },
      textInputAction: TextInputAction.go,
      onSubmitted: (_){
        if(openSearch.isClick && textEditingController.text.toString().toLowerCase() != "descartáveis"){
          openSearch.changeIsNotFound(true);
          openSearch.changesearchBarIsNotEmpty(true);
        }else{
          if (openSearch.isClick) {
            openSearch.changeCurrentSearch(true);
            openSearch.changesearchBarIsNotEmpty(true);
          }
        }
      },
      controller: textEditingController,
      cursorColor: Colors.black,
      decoration: InputDecoration(
          suffixIcon: openSearch.searchBarIsNotEmpty || openSearch.currentSearch
              ? IconButton(
                  icon: const Icon(
                    Icons.clear,
                    color: Color(0xFFADBBBF),
                  ),
                  onPressed: () {
                    if (openSearch.isClick) {
                      openSearch.changesearchBarIsNotEmpty(false);
                      openSearch.changeCurrentSearch(false);
                      textEditingController.text = "";
                      openSearch.changeIsNotFound(false);
                    }
                  },
                )
              : IconButton(
                  icon: const Icon(
                    Icons.search,
                    color: Color(0xFF00B4CC),
                  ),
                  onPressed: () {

                    if(openSearch.isClick && textEditingController.text.toString().toLowerCase() != "descartáveis"){
                      openSearch.changeIsNotFound(true);
                      openSearch.changesearchBarIsNotEmpty(true);
                    }else{
                      if (openSearch.isClick) {
                        openSearch.changeCurrentSearch(true);
                        openSearch.changesearchBarIsNotEmpty(true);
                      }
                    }
                  },
                ),
          hintText: "Buscar",
          filled: true,
          fillColor: const Color(0xFFFFFFFF),
          contentPadding: const EdgeInsets.all(8),
          hintStyle: const TextStyle(
            color: Color(0xFF94A6A9),
          ),
          prefixIconColor: const Color(0xFF176585),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Scaffold(
          backgroundColor: Color(0xFFF7F9FA),
          appBar: openSearch.selectIndex != 1
              ? AppBar(
                  leading: openSearch.isClick
                      ? IconButton(
                          onPressed: () {
                            openSearch.changeCurrentSearch(false);
                            openSearch.changeClick(false);
                            openSearch.changeIsNotFound(false);
                            openSearch.changesearchBarIsNotEmpty(false);
                            textEditingController.text = "";
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        )
                      : null,
                  actions: openSearch.isClick
                      ? [
                          //ModifiedTextButton(textButton: "Filtro", colorText: Colors.white, fontSize: 14, onPressed: (){},)
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            width: 63,
                            height: 44,
                            child: ModifiedTextButton(textButton: "Filtro", colorText: Colors.white, fontSize: 14, onPressed: (){}, align: TextAlign.center),
                          ),
                        ]
                      : null,
                  iconTheme: const IconThemeData(color: Color(0xFF176585)),
                  backgroundColor: const Color(0xFF00B4CC),
                  title: Center(
                    child: SizedBox(
                      height: 44,
                      width: 355,
                      child: _searchBar(),
                    ),
                  ),
                )
              : AppBar(
                  backgroundColor: Colors.white,
                  title: const Text(
                    "Categorias",
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: "DM Sans",
                        fontWeight: FontWeight.w400),
                  ),
                ),
          body: Stack(
            children: [
              _listOfTabs.elementAt(openSearch.selectIndex),
              if (openSearch.isClick)
                TabLatestSearches(
                  textEditingController: textEditingController,
                ),
              if (openSearch.currentSearch) TabCurrentSearch(),
              if(openSearch.isNotFound) TabNotFound(valueNotFound: textEditingController.text.toString().isNotEmpty ? textEditingController.text.toString() : "Digite no campo de busca",),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.home),
                icon: Icon(
                  Icons.home_outlined,
                  color: Color(0xFF7C9094),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.category),
                icon: Icon(
                  Icons.category_outlined,
                  color: Color(0xFF7C9094),
                ),
                label: 'Categoria',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.add_box),
                icon: Icon(
                  Icons.add_box_outlined,
                  color: Color(0xFF7C9094),
                ),
                label: 'Anunciar',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.favorite),
                icon: Icon(
                  Icons.favorite_border,
                  color: Color(0xFF7C9094),
                ),
                label: 'Favorito',
              ),
              BottomNavigationBarItem(
                activeIcon: Icon(Icons.person),
                icon: Icon(
                  Icons.person_2_outlined,
                  color: Color(0xFF7C9094),
                ),
                label: 'Conta',
              )
            ],
            currentIndex: openSearch.selectIndex,
            selectedItemColor: Color(0xFF00B4CC),
            onTap: _onItemTapped,
          ),
        );
      },
    );
  }
}