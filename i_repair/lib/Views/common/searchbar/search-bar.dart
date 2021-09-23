import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:i_repair/views/common/placeholder/placeholder-widget.dart';
import 'package:page_transition/page_transition.dart';
import 'package:searchfield/searchfield.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({
    Key? key,
    required TextEditingController searchController,
  })  : _searchController = searchController,
        super(key: key);

  final TextEditingController _searchController;
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        children: [
          Container(
            width: 300,
            padding: EdgeInsets.only(top: 25, right: 10),
            margin: EdgeInsets.only(left: 10),
            child: SearchField(
              onTap: (value) => {
                Navigator.push(
                  context,
                  PageTransition(
                      child: PlaceholderWidget(
                          Colors.white, widget._searchController.text),
                      type: PageTransitionType.rightToLeft),
                )
              },
              hasOverlay: true,
              controller: widget._searchController,
              suggestionState: SuggestionState.hidden,
              hint: 'Chào Đăng, có chuyện gì sao ?',
              suggestions: [
                'Hư ống nước',
                'Bể bánh xe',
                'Xe hết dầu',
                'Hư ống đồng máy lạnh',
                'Vỡ màn hình điện thoại',
                'SSD laptop bị hỏng'
              ],
              maxSuggestionsInViewPort: 4,
              marginColor: Colors.white,
              suggestionStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
              searchStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
              itemHeight: 50,
              suggestionsDecoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.grey.withOpacity(0.2),
              ),
              searchInputDecoration: InputDecoration(
                filled: true,
                fillColor: Color(0XffCCC5B9).withOpacity(0.4),
                contentPadding: EdgeInsets.only(top: 15, bottom: 10, left: 20),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    style: BorderStyle.none,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(style: BorderStyle.none),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.black45,
                  size: 20,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, top: 0),
            height: 55,
            child: InkWell(
              onTap: () => {},
              child: Center(
                child: Column(
                  children: [
                    Icon(
                      CupertinoIcons.add_circled_solid,
                      size: 30,
                      color: CupertinoColors.activeOrange,
                    ),
                    Text(
                      "Tạo yêu cầu",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}