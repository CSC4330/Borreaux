import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:borreauxapp/screens/seller_profile.dart';


class OrderInfoWidget extends StatefulWidget {
  OrderInfoWidget({Key key}) : super(key: key);

  @override
  _OrderInfoWidgetState createState() => _OrderInfoWidgetState();
}

class _OrderInfoWidgetState extends State<OrderInfoWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F5F5),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          buttonSize: 46,
          icon: Icon(
            Icons.chevron_left_outlined,
            color: Color(0xFF3A7CA5),
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 80,
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1, 1.27),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          1, 0, 2, 0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(60),
                                        child: Image.asset(
                                          'lib/assets/images/Screen_Shot_2021-11-28_at_3.07.32_PM.png',
                                          width: 80,
                                          height: 80,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.3, 1.84),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          40, 40, 0, 0),
                                      child: Container(
                                        width: 45,
                                        height: 45,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          'lib/assets/images/burrow.png',
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.4, -0.35),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AutoSizeText(
                                      'Java Concepts',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.title1.override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF3A7CA5),
                                      ),
                                    ),
                                    Text(
                                      'Edition: 7th',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xD4353333),
                                        fontSize: 16,
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AutoSizeText(
                                          'Author: Cay Horstmann',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xD4353333),
                                            fontSize: 16,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Color(0xFFD2CCCC),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Rental Date',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: Text(
                          'Aug. 5,2021',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                        child: Text(
                          'Return Date',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: Text(
                          'Dec. 15,2021',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Divider(),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Icon(
                        Icons.message_sharp,
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Text(
                        'Message Renter',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Lexend Deca',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(160, 0, 0, 0),
                      child: Icon(
                        Icons.keyboard_arrow_right_sharp,
                        color: Colors.black,
                        size: 24,
                      ),
                    )
                  ],
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Divider(
                  color: Color(0xFFD2CCCC),


                ),
                InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SellerProfilePage(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Icon(
                          Icons.person,
                          color: Colors.black,
                          size: 24,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          'View Renter\'s Profile',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Lexend Deca',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(130, 0, 0, 0),
                        child: Icon(
                          Icons.keyboard_arrow_right_sharp,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Divider(),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                  child: InkWell(
                    onTap: () async {
                      await launchURL('mailto: support@borreaux.com');
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          child: Icon(
                            Icons.help_outline_rounded,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                          child: Text(
                            'Need Support',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Lexend Deca',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(172, 0, 0, 0),
                          child: Icon(
                            Icons.keyboard_arrow_right_sharp,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Divider(
              height: 10,
              thickness: 10,
              color: Color(0xFFD2CCCC),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 210, 0),
              child: Text(
                'Rental Details',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Lexend Deca',
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 15, 0, 0),
                        child: Text(
                          'Confirmation Code',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                  child: Text(
                    'gCoZUq3Y9h',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Lexend Deca',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                )
              ],
            ),
            Divider(
              height: 20,
              color: Color(0xFFD2CCCC),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 15, 0, 0),
                      child: Text(
                        'Picked Up Date',
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                  child: Text(
                    'Aug. 7, 2021',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Lexend Deca',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                )
              ],
            ),
            Divider(
              color: Color(0xFFD2CCCC),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 15, 0, 0),
                  child: Text(
                    'Return Policy',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Lexend Deca',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                  child: Text(
                    'Read More',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Lexend Deca',
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
