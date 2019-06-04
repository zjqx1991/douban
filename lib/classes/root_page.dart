import 'package:flutter/material.dart';
import 'home/home_page.dart';
import 'book/book_page.dart';
import 'group/group_page.dart';
import 'fair/fair_page.dart';
import 'person/person_page.dart';
import '../common/revan_image_name/revan_image_name.dart';
import '../common/revan_constant/revan_constant.dart';

class RootPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RootPageState();
  }
}

class _RootPageState extends State<RootPage> {

  final _tabBarIconWH = 30.0;
  //1、默认选中
  int _currentIndex = 0;
  HomePage _homepage;
  BookPage _bookPage;
  GroupPage _groupPage;
  FairPage _fairPage;
  PersonPage _personPage;

  //2、当前显示的body页面
  Widget _currentBody() {

    switch (_currentIndex) {
      case 0:
        {
          if (null == _homepage) {
            _homepage = HomePage();
          }
        }
        break;
      case 1:
        {
          if (null == _bookPage) {
            _bookPage = BookPage();
          }
        }
        break;
      case 2:
        {
          if (null == _groupPage) {
            _groupPage = GroupPage();
          }
        }
        break;
      case 3:
        {
          if (null == _fairPage) {
            _fairPage = FairPage();
          }
        }
        break;
      case 4:
        {
          if (null == _personPage) {
            _personPage = PersonPage();
          }
        }
        break;
    }
  }

  //3、bottomNavigationBar
  List<BottomNavigationBarItem> _itemList;
  final _tabBarItemList = [
    _tabBarItem(
        '首页',
        RevanImageName.imageName(RevanConstant.ASSETS_IMG_TABBAR, 'tabbar_home_normal'),
        RevanImageName.imageName(RevanConstant.ASSETS_IMG_TABBAR, 'tabbar_home_select')
    ),
    _tabBarItem(
        '书影音',
        RevanImageName.imageName(RevanConstant.ASSETS_IMG_TABBAR, 'tabbar_book_normal'),
        RevanImageName.imageName(RevanConstant.ASSETS_IMG_TABBAR, 'tabbar_book_select')
    ),
    _tabBarItem(
        '小组',
        RevanImageName.imageName(RevanConstant.ASSETS_IMG_TABBAR, 'tabbar_group_normal'),
        RevanImageName.imageName(RevanConstant.ASSETS_IMG_TABBAR, 'tabbar_group_select')
    ),
    _tabBarItem(
        '市集',
        RevanImageName.imageName(RevanConstant.ASSETS_IMG_TABBAR, 'tabbar_fair_normal'),
        RevanImageName.imageName(RevanConstant.ASSETS_IMG_TABBAR, 'tabbar_fair_select')
    ),
    _tabBarItem(
        '我的',
        RevanImageName.imageName(RevanConstant.ASSETS_IMG_TABBAR, 'tabbar_person_normal'),
        RevanImageName.imageName(RevanConstant.ASSETS_IMG_TABBAR, 'tabbar_person_select')
    )

  ];

  //4、切换tabbar
  void _onClickTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    if (null == _itemList) {
      _itemList = _tabBarItemList.map(
          (item){
            return BottomNavigationBarItem(
              title: Text(
                item.name,
                style: TextStyle(
                  fontSize: 10.0
                ),
              ), 
              icon: Image.asset(
                item.normalImg,
                width: _tabBarIconWH,
                height: _tabBarIconWH,
              ),
              activeIcon: Image.asset(
                  item.selectImg,
                width: _tabBarIconWH,
                height: _tabBarIconWH,
              )
            );
          }
      ).toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 248, 248),
      body: _currentBody(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.black45,
        currentIndex: _currentIndex,
        items: _itemList,
        onTap: _onClickTap,
      ),
    );
  }

}

class _tabBarItem {
  String name, selectImg, normalImg;
  _tabBarItem(
      this.name,
      this.normalImg,
      this.selectImg,
      );
}