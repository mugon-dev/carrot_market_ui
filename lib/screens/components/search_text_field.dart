import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          disabledBorder: _buildOutLineInputBorder(),
          enabledBorder: _buildOutLineInputBorder(),
          focusedBorder: _buildOutLineInputBorder(),
          filled: true,
          fillColor: Colors.grey[200],
          // 글이 입력되는 content영역 앞에 icon 위젯을 사용
          prefixIcon: Icon(
            CupertinoIcons.search,
            color: Colors.grey,
          ),
          // 글 입력 영역을 감싸고 있는 container의 padding 값
          contentPadding:
              const EdgeInsets.only(left: 0, bottom: 15, top: 15, right: 0),
          hintText: '좌동 주변 가게를 찾아 보세요',
          hintStyle: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  OutlineInputBorder _buildOutLineInputBorder() {
    return OutlineInputBorder(
      // border의 색상과 두께
      borderSide: const BorderSide(width: 0.5, color: Color(0xffd4d5dd)),
      // textfield 영역에 곡선
      borderRadius: BorderRadius.circular(8.0),
    );
  }
}
