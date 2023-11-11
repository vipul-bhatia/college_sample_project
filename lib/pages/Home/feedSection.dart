import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import './discover.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';

class feedSection extends StatefulWidget {
  @override
  _feedSectionState createState() => _feedSectionState();
}

class _feedSectionState extends State<feedSection>
    with TickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  bool isHeartClicked = false;
  bool isSaveClicked = false;

  final List<String> urlImages = [
    'https://plus.unsplash.com/premium_photo-1664110691200-0d37f5d0aea5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3145&q=80',
    'https://plus.unsplash.com/premium_photo-1664110691200-0d37f5d0aea5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3145&q=80',
    'https://plus.unsplash.com/premium_photo-1664110691200-0d37f5d0aea5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3145&q=80',
    'https://plus.unsplash.com/premium_photo-1664110691200-0d37f5d0aea5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3145&q=80',
    'https://plus.unsplash.com/premium_photo-1664110691200-0d37f5d0aea5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3145&q=80',
  ];
  int activeIndex = 0;
  late PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF1F5F8),
   
        body: SingleChildScrollView(
          child: SafeArea(
            top: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
        
                Stack(
                  children: [
                    CarouselSlider.builder(
                    options: CarouselOptions(
                        height: 200,
                        autoPlay: true,
                        viewportFraction: 1,
                        autoPlayInterval: Duration(seconds: 4),
                        onPageChanged: (index, reason) => {
                              setState(() {
                                activeIndex = index;
                              })
                            }),
                    itemCount: urlImages.length,
                    itemBuilder: (context, index, realIndex) {
                      final urlImage = urlImages[index];
                      return buildImage(urlImage, index);
                    },
                  ),
                    Positioned
                    (left: 150,
                      bottom: 5,
                      child: buildIndicator()),
                  ]
                ),
                const SizedBox(height: 10),
               
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Column(
                    
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 7,
                              color: Color(0x2F1D2429),
                              offset: Offset(0, 3),
                            )
                          ],
                         
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              //profile round photo
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 12, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1510414842594-a61c69b5ae57?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fGJlYWNofGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
                                        width: 40,
                                        height: 40,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Vipul',
                                          style: TextStyle(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Color(0xFF0F1113),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 4, 0, 0),
                                          child: Text(
                                            'Flutter developer',
                                            style: TextStyle(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Container(
                                                      width: 60,
                                                      height: 20,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                          color: Colors
                                                              .purple[500]!,
                                                          width: 1,
                                                        ),
                                                        color:
                                                            Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(32),
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 0.00),
                                                      child: Text(
                                                        'Project',
                                                        style: TextStyle(
                                                          fontFamily:
                                                              'Plus Jakarta Sans',
                                                          color:
                                                              Colors.purple[500],
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 0),
                                    child: Icon(
                                      Icons.more_vert,
                                      color: Color(0xFF8B97A2),
                                      size: 24,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Topic: Car crash detection',
                                      style: TextStyle(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: Color(0xFF0F1113),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'I’ll be working on a few different proposals, let me know when you’ve got time to go over them before the weekend. I’ll be working on a few different proposals, let me know when you’ve got time to go over them before the weekend. I’ll be working on a few different proposals, let me know when you’ve got time to go over them before the weekend. I’ll be working on a few different proposals, let me know when you’ve got time to go over them before the weekend.',
                                      style: TextStyle(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              // a grey line after this
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Divider(
                                  color: Color(0xFFE5E7EB),
                                  thickness: 2,
                                ),
                              ),
                
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                     Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                           IconButton(
                                      onPressed: () {
                                           setState(() {
                    isHeartClicked = !isHeartClicked;
                  });
                                        },
                                        icon:isHeartClicked
                    ? SvgPicture.asset('icons_up/Home Screen/Post/heart_c.svg')
                    : SvgPicture.asset('icons_up/Home Screen/Post/heart.svg'),
                                        iconSize: 24,
                                      ),
                                         SizedBox(
                                        width: 35,
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                        icon: SvgPicture.asset('icons_up/Home Screen/Post/comment.svg'),
                                        iconSize: 24,
                                      ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                       IconButton(
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                        
icon: SvgPicture.asset('icons_up/Home Screen/Post/share.svg'),
                                        iconSize: 24,
                                      ),
                                      SizedBox(
                                        width: 35,
                                      ),
                                       IconButton(
                                         onPressed: () {
                                           setState(() {
                  isSaveClicked = !isSaveClicked;
                  });
                                        },
                                        icon:isSaveClicked
                    ? SvgPicture.asset('icons_up/Home Screen/Post/ave_c.svg')
                    : SvgPicture.asset('icons_up/Home Screen/Post/save.svg'),
                                        iconSize: 24,
                                      ),
                                     
                                        ],
                                      )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                       Padding(
                         padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                         child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 7,
                                color: Color(0x2F1D2429),
                                offset: Offset(0, 3),
                              )
                            ],
                           
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                //profile round photo
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 12, 0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.network(
                                          'https://images.unsplash.com/photo-1510414842594-a61c69b5ae57?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fGJlYWNofGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
                                          width: 40,
                                          height: 40,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Vipul',
                                            style: TextStyle(
                                              fontFamily: 'Plus Jakarta Sans',
                                              color: Color(0xFF0F1113),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 4, 0, 0),
                                            child: Text(
                                              'Flutter developer',
                                              style: TextStyle(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Container(
                                                        width: 60,
                                                        height: 20,
                                                        decoration: BoxDecoration(
                                                          border: Border.all(
                                                            color: Colors
                                                                .purple[500]!,
                                                            width: 1,
                                                          ),
                                                          color:
                                                              Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(32),
                                                        ),
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.00, 0.00),
                                                        child: Text(
                                                          'Project',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Plus Jakarta Sans',
                                                            color:
                                                                Colors.purple[500],
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.normal,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 0),
                                      child: Icon(
                                        Icons.more_vert,
                                        color: Color(0xFF8B97A2),
                                        size: 24,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        'Topic: Car crash detection',
                                        style: TextStyle(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: Color(0xFF0F1113),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'I’ll be working on a few different proposals, let me know when you’ve got time to go over them before the weekend. I’ll be working on a few different proposals, let me know when you’ve got time to go over them before the weekend. I’ll be working on a few different proposals, let me know when you’ve got time to go over them before the weekend. I’ll be working on a few different proposals, let me know when you’ve got time to go over them before the weekend.',
                                        style: TextStyle(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                // a grey line after this
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: Divider(
                                    color: Color(0xFFE5E7EB),
                                    thickness: 2,
                                  ),
                                ),
                                       
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                       Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                             IconButton(
                                        onPressed: () {
                                             setState(() {
                                           isHeartClicked = !isHeartClicked;
                                         });
                                          },
                                          icon:isHeartClicked
                                           ? SvgPicture.asset('icons_up/Home Screen/Post/heart_c.svg')
                                           : SvgPicture.asset('icons_up/Home Screen/Post/heart.svg'),
                                          iconSize: 24,
                                        ),
                                           SizedBox(
                                          width: 35,
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                          icon: SvgPicture.asset('icons_up/Home Screen/Post/comment.svg'),
                                          iconSize: 24,
                                        ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                         IconButton(
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                          
                       icon: SvgPicture.asset('icons_up/Home Screen/Post/share.svg'),
                                          iconSize: 24,
                                        ),
                                        SizedBox(
                                          width: 35,
                                        ),
                                         IconButton(
                                           onPressed: () {
                                             setState(() {
                                         isSaveClicked = !isSaveClicked;
                                         });
                                          },
                                          icon:isSaveClicked
                                           ? SvgPicture.asset('icons_up/Home Screen/Post/ave_c.svg')
                                           : SvgPicture.asset('icons_up/Home Screen/Post/save.svg'),
                                          iconSize: 24,
                                        ),
                                       
                                          ],
                                        )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                                             ),
                       ),
                        
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
        effect: WormEffect(
          dotHeight: 8,
          dotWidth: 8,
          activeDotColor: Color(0xFF613FE5),
          dotColor: Color(0xFFDADADA),
        ),
      );
}

Widget buildImage(String urlImage, int index) => Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: NetworkImage(urlImage),
          fit: BoxFit.cover,
        ),
      ),
    );
