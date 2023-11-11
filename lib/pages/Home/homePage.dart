import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import './feedSection.dart';
import './questionStatus.dart';
import './writePost.dart';
import './discover.dart';
import './profile.dart';
import '../Chat/chatSection.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // void contactsScreen(BuildContext context) {
  //   Navigator.of(context).pushNamed('/alumini');
  // }


final List<Map<String, dynamic>> _bottomNavBarItems = [
  {
    'activeIcon': SvgPicture.asset('icons_up/Home Screen/home_c.svg', color: Colors.black, width: 24, height: 24),
    'inactiveIcon': SvgPicture.asset('icons_up/Home Screen/home.svg', color: Colors.black,width: 24, height: 24),
    'label': 'Home',
  },
  {
    'activeIcon': SvgPicture.asset('icons_up/Home Screen/discover_c.svg', color: Colors.black,width: 24, height: 24),
    'inactiveIcon':SvgPicture.asset('icons_up/Home Screen/discover.svg', color: Color(0xFF120E16),width: 24, height: 24),
    'label': 'Discover',
  },
  {
    'activeIcon': SvgPicture.asset('icons_up/Home Screen/post_c.svg', color: Colors.black,width: 24, height: 24),
    'inactiveIcon': SvgPicture.asset('icons_up/Home Screen/post.svg', color: Color(0xFF120E16),width: 24, height: 24),
    'label': 'Write Post',
  },
  {
    'activeIcon':  SvgPicture.asset('icons_up/Home Screen/ques_c.svg', color: Colors.black,width: 24, height: 24),
    'inactiveIcon': SvgPicture.asset('icons_up/Home Screen/ques.svg', color: Color(0xFF120E16),width: 24, height: 24),
    'label': 'Question Status',
  },
  {
    'activeIcon': SvgPicture.asset('icons_up/Home Screen/profile_c.svg', color: Colors.black,width: 24, height: 24),
    'inactiveIcon': SvgPicture.asset('icons_up/Home Screen/profile.svg', color: Colors.black,width: 24, height: 24),
    'label': 'Profile',
  },
];

  final List<Map<String, dynamic>> _pages = [
    {
      'Pages': feedSection(),

    },
    {
      'Pages': discover(),

    },
    {
      'Pages': writePost(),

    },
    {
      'Pages': questionStatus(),

    },
    {
      'Pages': profile(),

    },
  ];
  int _SeletedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _SeletedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
  bool shouldShowAppBar = [0,  ].contains(_SeletedPageIndex);

    return DefaultTabController(
        length: 5,
        // initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(
              color: Color(0xFF613FE5),
            ),
            backgroundColor: Color(0xFFF6F6F7),
            title: // searchbutton with space
                  shouldShowAppBar ?  SizedBox(
                    height: 30,
                    child: TextFormField(
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Search',
                      labelStyle: TextStyle(
                        fontFamily: 'Plus Jakarta Sans',
                        color: Color(0xFF606A85),
                        fontSize: 8,  // reduced from 10 to 8
                        fontWeight: FontWeight.w500,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFE5E7EB),
                          width: 1,  // reduced from 2 to 1
                        ),
                        borderRadius: BorderRadius.circular(8),  // reduced from 12 to 8
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF6F61EF),
                          width: 1,  // reduced from 2 to 1
                        ),
                        borderRadius: BorderRadius.circular(8),  // reduced from 12 to 8
                      ),
                      contentPadding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),  // reduced padding from 20 to 15
                      suffixIcon: Icon(
                        Icons.search_rounded,
                        color: Color(0xFF606A85),
                        size: 18,  // optionally, you can adjust this for a smaller icon
                      ),
                    ),
                    style: TextStyle(
                      fontFamily: 'Plus Jakarta Sans',
                      color: Color(0xFF15161E),
                      fontSize: 12,  // reduced from 14 to 12
                      fontWeight: FontWeight.w500,
                    ),
                    cursorColor: Color(0xFF6F61EF),
                  ),
                  )
:
           
               Text('data'),
            actions: [
                 IconButton(
                   onPressed: () {
                     Navigator.of(context).push(
                                       MaterialPageRoute(
                                           builder: (context) => chatSection()));
                   },
                   icon:SvgPicture.asset('icons_up/Home Screen/Post/chat.svg'),
                   iconSize: 22,
                 ),
            ],
            centerTitle: true,
            elevation: 0.0,
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                Container(
                  height: 120,
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.centerLeft,
                  color: Color(0xFF120E16),
                  child: Text(
                    'Scheduling Events Has Never Been This Easy!',
                    style: TextStyle(
                      color: Color(0xFFF6F6F7),
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                ListTile(
                  leading: Icon(Icons.home, color: Color(0xFF613FE5), size: 32),
                  title: Text(
                    'About Us',
                    style: TextStyle(fontSize: 17),
                  ),
                  onTap: () {
                    // Navigator.of(context).pushNamed('/aboutUs');
                  },
                ),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Color(0xFF613FE5),
                    size: 32,
                  ),
                  title: Text(
                    'Our College',
                    style: TextStyle(fontSize: 17),
                  ),
                  onTap: () {
                    // Navigator.of(context).pushNamed('/ourCollege');
                  },
                ),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                ListTile(
                  leading: Icon(Icons.person_outline,
                      color: Color(0xFF613FE5), size: 32),
                  title: Text(
                    'Alumini of NMIMS',
                    style: TextStyle(fontSize: 17),
                  ),
                  onTap: () {
                    // Navigator.of(context).pushNamed('/alumini');
                  },
                ),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                ListTile(
                  leading:
                      Icon(Icons.newspaper, color: Color(0xFF613FE5), size: 32),
                  title: Text(
                    'College Clubs',
                    style: TextStyle(fontSize: 17),
                  ),
                  onTap: () {
                    // Navigator.of(context).pushNamed('/collegeClubs');
                  },
                ),
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                ListTile(
                  leading: Icon(Icons.feedback_outlined,
                      color: Color(0xFF613FE5), size: 32),
                  title: Text(
                    'Feedback/Suggestions',
                    style: TextStyle(fontSize: 17),
                  ),
                  onTap: () {
                    // Navigator.of(context).pushNamed('/feedback');
                  },
                ),
              ],
            ),
          ),
          body: _pages[_SeletedPageIndex]['Pages'],
bottomNavigationBar: Container(
  height: 50,
  color: Color(0xFFF6F6F7),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: _bottomNavBarItems.map((item) {
      int index = _bottomNavBarItems.indexOf(item);
      return Expanded(
        child: InkWell(
          onTap: () => _selectPage(index),
          child: Container(
            padding: EdgeInsets.all(0.0), // 5px padding to increase tappable area
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 3,
                  color: _SeletedPageIndex == index ? Color(0xFF613FE5) : Colors.transparent,
                ),
                SizedBox(
                  height: 10,
                ),
                _SeletedPageIndex == index ? item['activeIcon'] : item['inactiveIcon'],
              ],
            ),
          ),
        ),
      );
    }).toList(),
  ),
),




        ));
  }
}