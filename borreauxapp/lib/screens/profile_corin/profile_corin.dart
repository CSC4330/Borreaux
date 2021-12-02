import 'package:borreauxapp/assets/colors.dart';
import 'package:borreauxapp/screens/login_page.dart';
import 'package:borreauxapp/widgets/nav_bar.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../order_history/order_history_widget.dart';
import '../settings/settings_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CorinProfileWidget extends StatefulWidget {
  CorinProfileWidget({Key key}) : super(key: key);

  @override
  _CorinProfileWidgetState createState() => _CorinProfileWidgetState();
}

class _CorinProfileWidgetState extends State<CorinProfileWidget> {
  bool _loadingButton1 = false;
  bool _loadingButton2 = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional(-1, -1),
          children: [
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.chevron_left_rounded,
                color: Color(0xFF3A7CA5),
                size: 30,
              ),
              onPressed: () async {
                setState(() => _loadingButton1 = true);
                try {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => nav_bar(),
                    ),
                  );
                } finally {
                  setState(() => _loadingButton1 = false);
                }
              },
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Column(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(10, 0),
                        child: Stack(
                          children: [
                            Align(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 40, 0, 20),
                                child: Container(
                                  width: 120,
                                  height: 120,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'lib/assets/images/13707656_10208704555125113_2536130105804357909_n.jpeg',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.72, 1.07),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    190, 130, 0, 0),
                                child: FlutterFlowIconButton(
                                  borderColor: Color(0xFFEFF5F8),
                                  borderRadius: 50,
                                  borderWidth: 2,
                                  buttonSize: 40,
                                  fillColor: Color(0xFF3A7CA5),
                                  icon: Icon(
                                    Icons.edit_sharp,
                                    color: FlutterFlowTheme.tertiaryColor,
                                    size: 20,
                                  ),
                                  onPressed: () {
                                    print('Edit button pressed ...');
                                  },
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(3.75, -1.39),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    250, 0, 0, 0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 60,
                                  icon: Icon(
                                    Icons.settings,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  onPressed: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SettingsWidget(),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: Text(
                          'Corin Canepa',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF3E3B3B),
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      '5.0',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF3E3B3B),
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'Rentee Rating',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Lexend Deca',
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  '   |',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF3E3B3B),
                                    fontSize: 45,
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      '    125 ',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0xFF3E3B3B),
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      '       Reward Points',
                                      style:
                                          FlutterFlowTheme.bodyText1.override(
                                        fontFamily: 'Lexend Deca',
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 50),
                          Text(
                            'About Me',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Senior at Louisiana State Unversity majoring in\nComputer Science. ',
                            style: FlutterFlowTheme.bodyText1,
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            setState(() => _loadingButton1 = true);
                            try {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OrderHistoryWidget(),
                                ),
                              );
                            } finally {
                              setState(() => _loadingButton1 = false);
                            }
                          },
                          text:
                              'Order History                                                      ',
                          icon: Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 15,
                          ),
                          options: FFButtonOptions(
                            width: 410,
                            height: 40,
                            color: Color(0xFFF5F5F5),
                            textStyle: FlutterFlowTheme.subtitle2.override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF3A7CA5),
                              fontWeight: FontWeight.w600,
                            ),
                            borderSide: BorderSide(
                              color: Color(0x473B3939),
                              width: 0,
                            ),
                            borderRadius: 0,
                          ),
                          loading: _loadingButton1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            //signOut(context: context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                          text: 'Log Out',
                          options: FFButtonOptions(
                            width: 130,
                            height: 40,
                            color: Color(0xFF3A7CA5),
                            textStyle: FlutterFlowTheme.subtitle2.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 12,
                          ),
                          loading: _loadingButton2,
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
    );
  }
}
