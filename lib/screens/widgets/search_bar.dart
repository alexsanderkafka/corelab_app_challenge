import 'package:corelab_app_challenge/controller/open_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MySearchBar extends StatefulWidget {
  final TextEditingController textEditingController;

  const MySearchBar({super.key, required this.textEditingController});

  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  @override
  Widget build(BuildContext context) {
    Open openSearch = Open();

    return TextField(
      onTap: () {
        openSearch.changeClick(true);

        if (openSearch.currentSearch) {
          openSearch.changeCurrentSearch(false);
        }
      },
      controller: widget.textEditingController,
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
                widget.textEditingController.text = "";
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

              if(openSearch.isClick && widget.textEditingController.text.toString().toLowerCase() != "descartáveis"){
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
}
