import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_checkbox_group.dart';
import '../flutter_flow/flutter_flow_count_controller.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class NursingAssismentCopyCopyWidget extends StatefulWidget {
  const NursingAssismentCopyCopyWidget({Key? key}) : super(key: key);

  @override
  _NursingAssismentCopyCopyWidgetState createState() =>
      _NursingAssismentCopyCopyWidgetState();
}

class _NursingAssismentCopyCopyWidgetState
    extends State<NursingAssismentCopyCopyWidget> {
  List<String>? bedriddenValues1;
  List<String>? breathlessnessValues2;
  List<String>? remissionValues2;
  List<String>? opioidsValues1;
  List<String>? restlessnessValues2;
  List<String>? woundProgressionValues;
  List<String>? clinicallystableValues1;
  List<String>? opioidsValues2;
  int? countPainValue3;
  int? countPainValue4;
  List<String>? bleedingValues1;
  List<String>? breathlessnessValues1;
  List<String>? remissionValues1;
  List<String>? endoflifecareValues;
  List<String>? restlessnessValues1;
  List<String>? opioidsandtitrationValues1;
  int? countPainValue1;
  int? countPainValue2;
  List<String>? familycollusionthataffectsGoalsofcareValues;
  List<String>? familywantsBBNtopatientValues;
  List<String>? pspValues;
  int? distressthermometerValue;
  List<String>? bedriddenValues2;
  List<String>? bleedingValues2;
  List<String>? breathlessnessValues3;
  List<String>? woundProgValues;
  List<String>? feedingAassistanceValues;
  List<String>? opioidsandtitrationValues2;
  int? countEsasValue;
  int? countPainNValue;
  List<String>? bedriddenValues3;
  List<String>? clinicallystableValues2;
  bool? checkboxListTileValue1;
  bool? checkboxListTileValue2;
  bool? checkboxListTileValue3;
  bool? checkboxListTileValue4;
  bool? checkboxListTileValue5;
  bool? checkboxListTileValue6;
  bool? checkboxListTileValue7;
  bool? checkboxListTileValue8;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (valueOrDefault(currentUserDocument?.role, '') == 'Admin') {
        context.pushNamed('Admin_DashBoard');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: InkWell(
          onTap: () async {
            GoRouter.of(context).prepareAuthEvent();
            await signOut();

            context.pushNamedAuth('User_Login', mounted);
          },
          child: Text(
            FFLocalizations.of(context).getText(
              '4fd5fu13' /* Nursing  assessment */,
            ),
            style: FlutterFlowTheme.of(context).title2.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22,
                ),
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            alignment: AlignmentDirectional(1, 0.7),
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                  ))
                    Expanded(
                      child: DefaultTabController(
                        length: 3,
                        initialIndex: 0,
                        child: Column(
                          children: [
                            TabBar(
                              labelColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                  ),
                              indicatorColor:
                                  FlutterFlowTheme.of(context).secondaryColor,
                              indicatorWeight: 5,
                              tabs: [
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    'vo5yufe6' /* Clinical */,
                                  ),
                                ),
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    'lnexetfa' /* Nursing */,
                                  ),
                                ),
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    'gukme8f5' /* Psychological */,
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  StreamBuilder<List<AssesmentDetailRecord>>(
                                    stream: queryAssesmentDetailRecord(
                                      singleRecord: true,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                          ),
                                        );
                                      }
                                      List<AssesmentDetailRecord>
                                          containerAssesmentDetailRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the document does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final containerAssesmentDetailRecord =
                                          containerAssesmentDetailRecordList
                                                  .isNotEmpty
                                              ? containerAssesmentDetailRecordList
                                                  .first
                                              : null;
                                      return Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              FlutterFlowTheme.of(context)
                                                  .primaryBtnText,
                                              FlutterFlowTheme.of(context)
                                                  .primaryColor
                                            ],
                                            stops: [0, 1],
                                            begin: AlignmentDirectional(0, -1),
                                            end: AlignmentDirectional(0, 1),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.3, 0.15),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(50, 10, 50, 10),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0.15),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Container(
                                                          width: 200,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.15, 0),
                                                            child:
                                                                FlutterFlowCheckboxGroup(
                                                              options: [
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'kl53keam' /* Bleeding */,
                                                                )
                                                              ],
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      bleedingValues1 =
                                                                          val),
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                              checkColor:
                                                                  Colors.white,
                                                              checkboxBorderColor:
                                                                  Color(
                                                                      0xFF95A1AC),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                              initialized:
                                                                  bleedingValues1 !=
                                                                      null,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0.15),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Container(
                                                          width: 200,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.6, 0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          40,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child:
                                                                  FlutterFlowCheckboxGroup(
                                                                options: [
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'tq42ncn0' /* Breathlessness */,
                                                                  )
                                                                ],
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        breathlessnessValues1 =
                                                                            val),
                                                                activeColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryColor,
                                                                checkColor:
                                                                    Colors
                                                                        .white,
                                                                checkboxBorderColor:
                                                                    Color(
                                                                        0xFF95A1AC),
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                                initialized:
                                                                    breathlessnessValues1 !=
                                                                        null,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0.15),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Container(
                                                          width: 200,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.15, 0),
                                                            child:
                                                                FlutterFlowCheckboxGroup(
                                                              options: [
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '3jbu1xvh' /* Remission */,
                                                                )
                                                              ],
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      remissionValues1 =
                                                                          val),
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                              checkColor:
                                                                  Colors.white,
                                                              checkboxBorderColor:
                                                                  Color(
                                                                      0xFF95A1AC),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                              initialized:
                                                                  remissionValues1 !=
                                                                      null,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.3, 0.15),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(50, 10, 50, 10),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0.15),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Container(
                                                          width: 200,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.15, 0),
                                                            child:
                                                                FlutterFlowCheckboxGroup(
                                                              options: [
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'zip9ntje' /* Restlessness */,
                                                                )
                                                              ],
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      restlessnessValues1 =
                                                                          val),
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                              checkColor:
                                                                  Colors.white,
                                                              checkboxBorderColor:
                                                                  Color(
                                                                      0xFF95A1AC),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                              initialized:
                                                                  restlessnessValues1 !=
                                                                      null,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0.15),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Container(
                                                          width: 200,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.15, 0),
                                                            child:
                                                                FlutterFlowCheckboxGroup(
                                                              options: [
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'rkmsy8jb' /* End of life care  */,
                                                                )
                                                              ],
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      endoflifecareValues =
                                                                          val),
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                              checkColor:
                                                                  Colors.white,
                                                              checkboxBorderColor:
                                                                  Color(
                                                                      0xFF95A1AC),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                              initialized:
                                                                  endoflifecareValues !=
                                                                      null,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0.15),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Container(
                                                          width: 200,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.15, 0),
                                                            child:
                                                                FlutterFlowCheckboxGroup(
                                                              options: [
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'mii67w10' /* Opioids and titration */,
                                                                )
                                                              ],
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      opioidsandtitrationValues1 =
                                                                          val),
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                              checkColor:
                                                                  Colors.white,
                                                              checkboxBorderColor:
                                                                  Color(
                                                                      0xFF95A1AC),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                              initialized:
                                                                  opioidsandtitrationValues1 !=
                                                                      null,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.3, 0.15),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(50, 10, 10, 10),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0.15),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Container(
                                                          width: 400,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10,
                                                                        10,
                                                                        10,
                                                                        10),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -0.25,
                                                                          0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '603y40ke' /* Pain Score */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Material(
                                                                    color: Colors
                                                                        .transparent,
                                                                    elevation:
                                                                        5,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              25),
                                                                    ),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          160,
                                                                      height:
                                                                          50,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Colors
                                                                            .white,
                                                                        borderRadius:
                                                                            BorderRadius.circular(25),
                                                                        shape: BoxShape
                                                                            .rectangle,
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              Color(0xFF9E9E9E),
                                                                          width:
                                                                              1,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          FlutterFlowCountController(
                                                                        decrementIconBuilder:
                                                                            (enabled) =>
                                                                                FaIcon(
                                                                          FontAwesomeIcons
                                                                              .minus,
                                                                          color: enabled
                                                                              ? Color(0xDD000000)
                                                                              : Color(0xFFEEEEEE),
                                                                          size:
                                                                              20,
                                                                        ),
                                                                        incrementIconBuilder:
                                                                            (enabled) =>
                                                                                FaIcon(
                                                                          FontAwesomeIcons
                                                                              .plus,
                                                                          color: enabled
                                                                              ? Colors.blue
                                                                              : Color(0xFFEEEEEE),
                                                                          size:
                                                                              20,
                                                                        ),
                                                                        countBuilder:
                                                                            (count) =>
                                                                                Text(
                                                                          count
                                                                              .toString(),
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Roboto',
                                                                            color:
                                                                                Colors.black,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontSize:
                                                                                16,
                                                                          ),
                                                                        ),
                                                                        count:
                                                                            countPainValue1 ??=
                                                                                1,
                                                                        updateCount:
                                                                            (count) =>
                                                                                setState(() => countPainValue1 = count),
                                                                        stepSize:
                                                                            1,
                                                                        minimum:
                                                                            1,
                                                                        maximum:
                                                                            10,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0.15),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Container(
                                                          width: 400,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10,
                                                                        10,
                                                                        10,
                                                                        10),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'gacpibzr' /* ESAS Score */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Material(
                                                                    color: Colors
                                                                        .transparent,
                                                                    elevation:
                                                                        5,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              25),
                                                                    ),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          160,
                                                                      height:
                                                                          50,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Colors
                                                                            .white,
                                                                        borderRadius:
                                                                            BorderRadius.circular(25),
                                                                        shape: BoxShape
                                                                            .rectangle,
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              Color(0xFF9E9E9E),
                                                                          width:
                                                                              1,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          FlutterFlowCountController(
                                                                        decrementIconBuilder:
                                                                            (enabled) =>
                                                                                FaIcon(
                                                                          FontAwesomeIcons
                                                                              .minus,
                                                                          color: enabled
                                                                              ? Color(0xDD000000)
                                                                              : Color(0xFFEEEEEE),
                                                                          size:
                                                                              20,
                                                                        ),
                                                                        incrementIconBuilder:
                                                                            (enabled) =>
                                                                                FaIcon(
                                                                          FontAwesomeIcons
                                                                              .plus,
                                                                          color: enabled
                                                                              ? Colors.blue
                                                                              : Color(0xFFEEEEEE),
                                                                          size:
                                                                              20,
                                                                        ),
                                                                        countBuilder:
                                                                            (count) =>
                                                                                Text(
                                                                          count
                                                                              .toString(),
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Roboto',
                                                                            color:
                                                                                Colors.black,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontSize:
                                                                                16,
                                                                          ),
                                                                        ),
                                                                        count:
                                                                            countPainValue2 ??=
                                                                                1,
                                                                        updateCount:
                                                                            (count) =>
                                                                                setState(() => countPainValue2 = count),
                                                                        stepSize:
                                                                            1,
                                                                        minimum:
                                                                            1,
                                                                        maximum:
                                                                            10,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            FFButtonWidget(
                                              onPressed: () async {
                                                final assesmentDetailUpdateData =
                                                    createAssesmentDetailRecordData(
                                                  painScore: countPainValue1,
                                                  breathlessness: functions
                                                      .getCheckboxValue(
                                                          breathlessnessValues1!
                                                              .toList()),
                                                  titration: functions
                                                      .getCheckboxValue(
                                                          opioidsandtitrationValues1!
                                                              .toList()),
                                                  restlessness: functions
                                                      .getCheckboxValue(
                                                          restlessnessValues1!
                                                              .toList()),
                                                  endOfLife: functions
                                                      .getCheckboxValue(
                                                          endoflifecareValues!
                                                              .toList()),
                                                  remmission: functions
                                                      .getCheckboxValue(
                                                          remissionValues1!
                                                              .toList()),
                                                );
                                                await containerAssesmentDetailRecord!
                                                    .reference
                                                    .update(
                                                        assesmentDetailUpdateData);
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                '9zovl1wm' /* Update */,
                                              ),
                                              options: FFButtonOptions(
                                                width: 130,
                                                height: 40,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                        ),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                  StreamBuilder<List<NursingAssessmentRecord>>(
                                    stream: queryNursingAssessmentRecord(
                                      singleRecord: true,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                          ),
                                        );
                                      }
                                      List<NursingAssessmentRecord>
                                          containerNursingAssessmentRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the document does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final containerNursingAssessmentRecord =
                                          containerNursingAssessmentRecordList
                                                  .isNotEmpty
                                              ? containerNursingAssessmentRecordList
                                                  .first
                                              : null;
                                      return Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              FlutterFlowTheme.of(context)
                                                  .primaryBtnText,
                                              FlutterFlowTheme.of(context)
                                                  .primaryColor
                                            ],
                                            stops: [0, 1],
                                            begin: AlignmentDirectional(0, -1),
                                            end: AlignmentDirectional(0, 1),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.3, 0.15),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(50, 10, 50, 10),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0.15),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Container(
                                                          width: 200,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.15, 0),
                                                            child:
                                                                FlutterFlowCheckboxGroup(
                                                              options: [
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'vf6p2j47' /* Bedridden */,
                                                                )
                                                              ],
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      bedriddenValues1 =
                                                                          val),
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                              checkColor:
                                                                  Colors.white,
                                                              checkboxBorderColor:
                                                                  Color(
                                                                      0xFF95A1AC),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                              initialized:
                                                                  bedriddenValues1 !=
                                                                      null,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0.15),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Container(
                                                          width: 200,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.15, 0),
                                                            child:
                                                                FlutterFlowCheckboxGroup(
                                                              options: [
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '583tya5d' /* Breathlessness */,
                                                                )
                                                              ],
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      breathlessnessValues2 =
                                                                          val),
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                              checkColor:
                                                                  Colors.white,
                                                              checkboxBorderColor:
                                                                  Color(
                                                                      0xFF95A1AC),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                              initialized:
                                                                  breathlessnessValues2 !=
                                                                      null,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0.15),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Container(
                                                          width: 200,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.15, 0),
                                                            child:
                                                                FlutterFlowCheckboxGroup(
                                                              options: [
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'ojdf1qv6' /* Remission */,
                                                                )
                                                              ],
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      remissionValues2 =
                                                                          val),
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                              checkColor:
                                                                  Colors.white,
                                                              checkboxBorderColor:
                                                                  Color(
                                                                      0xFF95A1AC),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                              initialized:
                                                                  remissionValues2 !=
                                                                      null,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.3, 0.15),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(50, 10, 50, 10),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0.15),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Container(
                                                          width: 200,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.15, 0),
                                                            child:
                                                                FlutterFlowCheckboxGroup(
                                                              options: [
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'bhmuifs4' /* Restlessness */,
                                                                )
                                                              ],
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      restlessnessValues2 =
                                                                          val),
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                              checkColor:
                                                                  Colors.white,
                                                              checkboxBorderColor:
                                                                  Color(
                                                                      0xFF95A1AC),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                              initialized:
                                                                  restlessnessValues2 !=
                                                                      null,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0.15),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Container(
                                                          width: 200,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.15, 0),
                                                            child:
                                                                FlutterFlowCheckboxGroup(
                                                              options: [
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '7syo763q' /* WoundProgression */,
                                                                )
                                                              ],
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      woundProgressionValues =
                                                                          val),
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                              checkColor:
                                                                  Colors.white,
                                                              checkboxBorderColor:
                                                                  Color(
                                                                      0xFF95A1AC),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                              initialized:
                                                                  woundProgressionValues !=
                                                                      null,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0.15),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Container(
                                                          width: 200,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.15, 0),
                                                            child:
                                                                FlutterFlowCheckboxGroup(
                                                              options: [
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '3edh4hv8' /* Opioids */,
                                                                )
                                                              ],
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      opioidsValues1 =
                                                                          val),
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                              checkColor:
                                                                  Colors.white,
                                                              checkboxBorderColor:
                                                                  Color(
                                                                      0xFF95A1AC),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                              initialized:
                                                                  opioidsValues1 !=
                                                                      null,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.3, 0.15),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(50, 10, 50, 10),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0.15),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Container(
                                                          width: 200,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.15, 0),
                                                            child:
                                                                FlutterFlowCheckboxGroup(
                                                              options: [
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'eqrsz5db' /* Clinically stable */,
                                                                )
                                                              ],
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      clinicallystableValues1 =
                                                                          val),
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                              checkColor:
                                                                  Colors.white,
                                                              checkboxBorderColor:
                                                                  Color(
                                                                      0xFF95A1AC),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                              initialized:
                                                                  clinicallystableValues1 !=
                                                                      null,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0.15),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Container(
                                                          width: 200,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.15, 0),
                                                            child:
                                                                FlutterFlowCheckboxGroup(
                                                              options: [
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'pu5iqkci' /* Opioids */,
                                                                )
                                                              ],
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      opioidsValues2 =
                                                                          val),
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                              checkColor:
                                                                  Colors.white,
                                                              checkboxBorderColor:
                                                                  Color(
                                                                      0xFF95A1AC),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                              initialized:
                                                                  opioidsValues2 !=
                                                                      null,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.3, 0.15),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(50, 10, 10, 10),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0.15),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Container(
                                                          width: 400,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10,
                                                                        10,
                                                                        10,
                                                                        10),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -0.25,
                                                                          0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'enopf58i' /* Pain Score */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Material(
                                                                    color: Colors
                                                                        .transparent,
                                                                    elevation:
                                                                        5,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              25),
                                                                    ),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          160,
                                                                      height:
                                                                          50,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Colors
                                                                            .white,
                                                                        borderRadius:
                                                                            BorderRadius.circular(25),
                                                                        shape: BoxShape
                                                                            .rectangle,
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              Color(0xFF9E9E9E),
                                                                          width:
                                                                              1,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          FlutterFlowCountController(
                                                                        decrementIconBuilder:
                                                                            (enabled) =>
                                                                                FaIcon(
                                                                          FontAwesomeIcons
                                                                              .minus,
                                                                          color: enabled
                                                                              ? Color(0xDD000000)
                                                                              : Color(0xFFEEEEEE),
                                                                          size:
                                                                              20,
                                                                        ),
                                                                        incrementIconBuilder:
                                                                            (enabled) =>
                                                                                FaIcon(
                                                                          FontAwesomeIcons
                                                                              .plus,
                                                                          color: enabled
                                                                              ? Colors.blue
                                                                              : Color(0xFFEEEEEE),
                                                                          size:
                                                                              20,
                                                                        ),
                                                                        countBuilder:
                                                                            (count) =>
                                                                                Text(
                                                                          count
                                                                              .toString(),
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Roboto',
                                                                            color:
                                                                                Colors.black,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontSize:
                                                                                16,
                                                                          ),
                                                                        ),
                                                                        count:
                                                                            countPainValue3 ??=
                                                                                1,
                                                                        updateCount:
                                                                            (count) =>
                                                                                setState(() => countPainValue3 = count),
                                                                        stepSize:
                                                                            1,
                                                                        minimum:
                                                                            1,
                                                                        maximum:
                                                                            10,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0.15),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Container(
                                                          width: 400,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10,
                                                                        10,
                                                                        10,
                                                                        10),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'faclquqm' /* ESAS Score */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Material(
                                                                    color: Colors
                                                                        .transparent,
                                                                    elevation:
                                                                        5,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              25),
                                                                    ),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          160,
                                                                      height:
                                                                          50,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Colors
                                                                            .white,
                                                                        borderRadius:
                                                                            BorderRadius.circular(25),
                                                                        shape: BoxShape
                                                                            .rectangle,
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              Color(0xFF9E9E9E),
                                                                          width:
                                                                              1,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          FlutterFlowCountController(
                                                                        decrementIconBuilder:
                                                                            (enabled) =>
                                                                                FaIcon(
                                                                          FontAwesomeIcons
                                                                              .minus,
                                                                          color: enabled
                                                                              ? Color(0xDD000000)
                                                                              : Color(0xFFEEEEEE),
                                                                          size:
                                                                              20,
                                                                        ),
                                                                        incrementIconBuilder:
                                                                            (enabled) =>
                                                                                FaIcon(
                                                                          FontAwesomeIcons
                                                                              .plus,
                                                                          color: enabled
                                                                              ? Colors.blue
                                                                              : Color(0xFFEEEEEE),
                                                                          size:
                                                                              20,
                                                                        ),
                                                                        countBuilder:
                                                                            (count) =>
                                                                                Text(
                                                                          count
                                                                              .toString(),
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Roboto',
                                                                            color:
                                                                                Colors.black,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontSize:
                                                                                16,
                                                                          ),
                                                                        ),
                                                                        count:
                                                                            countPainValue4 ??=
                                                                                1,
                                                                        updateCount:
                                                                            (count) =>
                                                                                setState(() => countPainValue4 = count),
                                                                        stepSize:
                                                                            1,
                                                                        minimum:
                                                                            1,
                                                                        maximum:
                                                                            10,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            FFButtonWidget(
                                              onPressed: () async {
                                                final nursingAssessmentUpdateData =
                                                    createNursingAssessmentRecordData(
                                                  painscore: countPainValue3,
                                                  bedridden: functions
                                                      .getCheckboxValue(
                                                          bedriddenValues1!
                                                              .toList()),
                                                  bleeding: functions
                                                      .getCheckboxValue(
                                                          bleedingValues1!
                                                              .toList()),
                                                  breathlessness: functions
                                                      .getCheckboxValue(
                                                          breathlessnessValues2!
                                                              .toList()),
                                                  restlessness: functions
                                                      .getCheckboxValue(
                                                          restlessnessValues2!
                                                              .toList()),
                                                  clinicallystable: functions
                                                      .getCheckboxValue(
                                                          clinicallystableValues1!
                                                              .toList()),
                                                );
                                                await containerNursingAssessmentRecord!
                                                    .reference
                                                    .update(
                                                        nursingAssessmentUpdateData);
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                'q46bxogo' /* Update
 */
                                                ,
                                              ),
                                              options: FFButtonOptions(
                                                width: 130,
                                                height: 40,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                        ),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                  StreamBuilder<
                                      List<PsychologicalAssessmentRecord>>(
                                    stream: queryPsychologicalAssessmentRecord(
                                      singleRecord: true,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                          ),
                                        );
                                      }
                                      List<PsychologicalAssessmentRecord>
                                          containerPsychologicalAssessmentRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the document does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final containerPsychologicalAssessmentRecord =
                                          containerPsychologicalAssessmentRecordList
                                                  .isNotEmpty
                                              ? containerPsychologicalAssessmentRecordList
                                                  .first
                                              : null;
                                      return Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              FlutterFlowTheme.of(context)
                                                  .primaryBtnText,
                                              FlutterFlowTheme.of(context)
                                                  .primaryColor
                                            ],
                                            stops: [0, 1],
                                            begin: AlignmentDirectional(0, -1),
                                            end: AlignmentDirectional(0, 1),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.3, 0.15),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(50, 10, 50, 10),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0.15),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Container(
                                                          width: 400,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.15, 0),
                                                            child:
                                                                FlutterFlowCheckboxGroup(
                                                              options: [
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'hkbkst20' /* Family wants BBN to patient  */,
                                                                )
                                                              ],
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      familywantsBBNtopatientValues =
                                                                          val),
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                              checkColor:
                                                                  Colors.white,
                                                              checkboxBorderColor:
                                                                  Color(
                                                                      0xFF95A1AC),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                              initialized:
                                                                  familywantsBBNtopatientValues !=
                                                                      null,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0.15),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Container(
                                                          width: 400,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.15, 0),
                                                            child:
                                                                FlutterFlowCheckboxGroup(
                                                              options: [
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '152ipm5h' /* Family collusion that affects ... */,
                                                                )
                                                              ],
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      familycollusionthataffectsGoalsofcareValues =
                                                                          val),
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                              checkColor:
                                                                  Colors.white,
                                                              checkboxBorderColor:
                                                                  Color(
                                                                      0xFF95A1AC),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                              initialized:
                                                                  familycollusionthataffectsGoalsofcareValues !=
                                                                      null,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.3, 0.15),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(50, 10, 50, 10),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0.15),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Container(
                                                          width: 400,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10,
                                                                        10,
                                                                        10,
                                                                        10),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -0.25,
                                                                          0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '0zgmzmk1' /* Distress thermometer */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child:
                                                                      Material(
                                                                    color: Colors
                                                                        .transparent,
                                                                    elevation:
                                                                        5,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              25),
                                                                    ),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          160,
                                                                      height:
                                                                          50,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Colors
                                                                            .white,
                                                                        borderRadius:
                                                                            BorderRadius.circular(25),
                                                                        shape: BoxShape
                                                                            .rectangle,
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              Color(0xFF9E9E9E),
                                                                          width:
                                                                              1,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          FlutterFlowCountController(
                                                                        decrementIconBuilder:
                                                                            (enabled) =>
                                                                                FaIcon(
                                                                          FontAwesomeIcons
                                                                              .minus,
                                                                          color: enabled
                                                                              ? Color(0xDD000000)
                                                                              : Color(0xFFEEEEEE),
                                                                          size:
                                                                              20,
                                                                        ),
                                                                        incrementIconBuilder:
                                                                            (enabled) =>
                                                                                FaIcon(
                                                                          FontAwesomeIcons
                                                                              .plus,
                                                                          color: enabled
                                                                              ? Colors.blue
                                                                              : Color(0xFFEEEEEE),
                                                                          size:
                                                                              20,
                                                                        ),
                                                                        countBuilder:
                                                                            (count) =>
                                                                                Text(
                                                                          count
                                                                              .toString(),
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Roboto',
                                                                            color:
                                                                                Colors.black,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontSize:
                                                                                16,
                                                                          ),
                                                                        ),
                                                                        count:
                                                                            distressthermometerValue ??=
                                                                                1,
                                                                        updateCount:
                                                                            (count) =>
                                                                                setState(() => distressthermometerValue = count),
                                                                        stepSize:
                                                                            1,
                                                                        minimum:
                                                                            1,
                                                                        maximum:
                                                                            10,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0, 0.15),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 5,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Container(
                                                          width: 200,
                                                          height: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.15, 0),
                                                            child:
                                                                FlutterFlowCheckboxGroup(
                                                              options: [
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  's5j2zpan' /* PSP */,
                                                                )
                                                              ],
                                                              onChanged: (val) =>
                                                                  setState(() =>
                                                                      pspValues =
                                                                          val),
                                                              activeColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                              checkColor:
                                                                  Colors.white,
                                                              checkboxBorderColor:
                                                                  Color(
                                                                      0xFF95A1AC),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                              initialized:
                                                                  pspValues !=
                                                                      null,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            FFButtonWidget(
                                              onPressed: () async {
                                                final psychologicalAssessmentUpdateData =
                                                    createPsychologicalAssessmentRecordData(
                                                  distressThermometer:
                                                      distressthermometerValue,
                                                  familyBbn: functions
                                                      .getCheckboxValue(
                                                          familywantsBBNtopatientValues!
                                                              .toList()),
                                                  familyGoalOfCare: functions
                                                      .getCheckboxValue(
                                                          familycollusionthataffectsGoalsofcareValues!
                                                              .toList()),
                                                  psp: functions
                                                      .getCheckboxValue(
                                                          pspValues!.toList()),
                                                );
                                                await containerPsychologicalAssessmentRecord!
                                                    .reference
                                                    .update(
                                                        psychologicalAssessmentUpdateData);
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                'q960zfpn' /* Update */,
                                              ),
                                              options: FFButtonOptions(
                                                width: 130,
                                                height: 40,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                        ),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Expanded(
                      child: DefaultTabController(
                        length: 1,
                        initialIndex: 0,
                        child: Column(
                          children: [
                            TabBar(
                              labelColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              labelStyle:
                                  FlutterFlowTheme.of(context).bodyText1,
                              indicatorColor:
                                  FlutterFlowTheme.of(context).secondaryColor,
                              tabs: [
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    'cfjm0rl1' /* Clinical */,
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: StreamBuilder<
                                        List<NursingAssessmentRecord>>(
                                      stream: queryNursingAssessmentRecord(
                                        singleRecord: true,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: CircularProgressIndicator(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                            ),
                                          );
                                        }
                                        List<NursingAssessmentRecord>
                                            containerNursingAssessmentRecordList =
                                            snapshot.data!;
                                        // Return an empty Container when the document does not exist.
                                        if (snapshot.data!.isEmpty) {
                                          return Container();
                                        }
                                        final containerNursingAssessmentRecord =
                                            containerNursingAssessmentRecordList
                                                    .isNotEmpty
                                                ? containerNursingAssessmentRecordList
                                                    .first
                                                : null;
                                        return Container(
                                          width: 100,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0.15),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 10),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 5,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 100,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10,
                                                                      10,
                                                                      10,
                                                                      10),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'tux1lj26' /* ESAS Score */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  elevation: 5,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            25),
                                                                  ),
                                                                  child:
                                                                      Container(
                                                                    width: 160,
                                                                    height: 50,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              25),
                                                                      shape: BoxShape
                                                                          .rectangle,
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFF9E9E9E),
                                                                        width:
                                                                            1,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        FlutterFlowCountController(
                                                                      decrementIconBuilder:
                                                                          (enabled) =>
                                                                              FaIcon(
                                                                        FontAwesomeIcons
                                                                            .minus,
                                                                        color: enabled
                                                                            ? Color(0xDD000000)
                                                                            : Color(0xFFEEEEEE),
                                                                        size:
                                                                            20,
                                                                      ),
                                                                      incrementIconBuilder:
                                                                          (enabled) =>
                                                                              FaIcon(
                                                                        FontAwesomeIcons
                                                                            .plus,
                                                                        color: enabled
                                                                            ? Colors.blue
                                                                            : Color(0xFFEEEEEE),
                                                                        size:
                                                                            20,
                                                                      ),
                                                                      countBuilder:
                                                                          (count) =>
                                                                              Text(
                                                                        count
                                                                            .toString(),
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Roboto',
                                                                          color:
                                                                              Colors.black,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontSize:
                                                                              16,
                                                                        ),
                                                                      ),
                                                                      count:
                                                                          countEsasValue ??=
                                                                              1,
                                                                      updateCount:
                                                                          (count) =>
                                                                              setState(() => countEsasValue = count),
                                                                      stepSize:
                                                                          1,
                                                                      minimum:
                                                                          1,
                                                                      maximum:
                                                                          10,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0.15),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 10),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 5,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 100,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10,
                                                                      10,
                                                                      10,
                                                                      10),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -0.25,
                                                                        0),
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'mhvp4kpc' /* Pain Score */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  elevation: 5,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            25),
                                                                  ),
                                                                  child:
                                                                      Container(
                                                                    width: 160,
                                                                    height: 50,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              25),
                                                                      shape: BoxShape
                                                                          .rectangle,
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFF9E9E9E),
                                                                        width:
                                                                            1,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        FlutterFlowCountController(
                                                                      decrementIconBuilder:
                                                                          (enabled) =>
                                                                              FaIcon(
                                                                        FontAwesomeIcons
                                                                            .minus,
                                                                        color: enabled
                                                                            ? Color(0xDD000000)
                                                                            : Color(0xFFEEEEEE),
                                                                        size:
                                                                            20,
                                                                      ),
                                                                      incrementIconBuilder:
                                                                          (enabled) =>
                                                                              FaIcon(
                                                                        FontAwesomeIcons
                                                                            .plus,
                                                                        color: enabled
                                                                            ? Colors.blue
                                                                            : Color(0xFFEEEEEE),
                                                                        size:
                                                                            20,
                                                                      ),
                                                                      countBuilder:
                                                                          (count) =>
                                                                              Text(
                                                                        count
                                                                            .toString(),
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Roboto',
                                                                          color:
                                                                              Colors.black,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontSize:
                                                                              16,
                                                                        ),
                                                                      ),
                                                                      count:
                                                                          countPainNValue ??=
                                                                              1,
                                                                      updateCount:
                                                                          (count) =>
                                                                              setState(() => countPainNValue = count),
                                                                      stepSize:
                                                                          1,
                                                                      minimum:
                                                                          1,
                                                                      maximum:
                                                                          10,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Visibility(
                                                    visible:
                                                        responsiveVisibility(
                                                      context: context,
                                                      phone: false,
                                                      tablet: false,
                                                      tabletLandscape: false,
                                                      desktop: false,
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10, 10,
                                                                  10, 10),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0, 0.15),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          10),
                                                              child: Material(
                                                                color: Colors
                                                                    .transparent,
                                                                elevation: 5,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  width: 150,
                                                                  height: 100,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.15,
                                                                            0),
                                                                    child:
                                                                        FlutterFlowCheckboxGroup(
                                                                      options: [
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'mde1aks5' /* Feeding Aassistance */,
                                                                        )
                                                                      ],
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => feedingAassistanceValues = val),
                                                                      activeColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryColor,
                                                                      checkColor:
                                                                          Colors
                                                                              .white,
                                                                      checkboxBorderColor:
                                                                          Color(
                                                                              0xFF95A1AC),
                                                                      textStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1,
                                                                      initialized:
                                                                          feedingAassistanceValues !=
                                                                              null,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0, 0.15),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          10),
                                                              child: Material(
                                                                color: Colors
                                                                    .transparent,
                                                                elevation: 5,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  width: 150,
                                                                  height: 100,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.15,
                                                                            0),
                                                                    child:
                                                                        FlutterFlowCheckboxGroup(
                                                                      options: [
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '4xouszc5' /* Opioids  */,
                                                                        )
                                                                      ],
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => opioidsandtitrationValues2 = val),
                                                                      activeColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryColor,
                                                                      checkColor:
                                                                          Colors
                                                                              .white,
                                                                      checkboxBorderColor:
                                                                          Color(
                                                                              0xFF95A1AC),
                                                                      textStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyText1,
                                                                      initialized:
                                                                          opioidsandtitrationValues2 !=
                                                                              null,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                  tabletLandscape: false,
                                                  desktop: false,
                                                ))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 10, 10, 10),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0, 0.15),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        10),
                                                            child: Material(
                                                              color: Colors
                                                                  .transparent,
                                                              elevation: 5,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: Container(
                                                                width: 150,
                                                                height: 100,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -0.15,
                                                                          0.15),
                                                                  child:
                                                                      FlutterFlowCheckboxGroup(
                                                                    options: [
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'tmwf8146' /* Breathlessness */,
                                                                      )
                                                                    ],
                                                                    onChanged: (val) =>
                                                                        setState(() =>
                                                                            breathlessnessValues3 =
                                                                                val),
                                                                    activeColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryColor,
                                                                    checkColor:
                                                                        Colors
                                                                            .white,
                                                                    checkboxBorderColor:
                                                                        Color(
                                                                            0xFF95A1AC),
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1,
                                                                    initialized:
                                                                        breathlessnessValues3 !=
                                                                            null,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0, 0.15),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        10),
                                                            child: Material(
                                                              color: Colors
                                                                  .transparent,
                                                              elevation: 5,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: Container(
                                                                width: 150,
                                                                height: 100,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.15,
                                                                          0),
                                                                  child:
                                                                      FlutterFlowCheckboxGroup(
                                                                    options: [
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'oxwar058' /* Wound progression */,
                                                                      )
                                                                    ],
                                                                    onChanged: (val) =>
                                                                        setState(() =>
                                                                            woundProgValues =
                                                                                val),
                                                                    activeColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryColor,
                                                                    checkColor:
                                                                        Colors
                                                                            .white,
                                                                    checkboxBorderColor:
                                                                        Color(
                                                                            0xFF95A1AC),
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1,
                                                                    initialized:
                                                                        woundProgValues !=
                                                                            null,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                  tabletLandscape: false,
                                                  desktop: false,
                                                ))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 10, 10, 10),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0, 0.15),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        10),
                                                            child: Material(
                                                              color: Colors
                                                                  .transparent,
                                                              elevation: 5,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: Container(
                                                                width: 150,
                                                                height: 100,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.15,
                                                                          0),
                                                                  child:
                                                                      FlutterFlowCheckboxGroup(
                                                                    options: [
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '4544i709' /* Bleeding */,
                                                                      )
                                                                    ],
                                                                    onChanged: (val) =>
                                                                        setState(() =>
                                                                            bleedingValues2 =
                                                                                val),
                                                                    activeColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryColor,
                                                                    checkColor:
                                                                        Colors
                                                                            .white,
                                                                    checkboxBorderColor:
                                                                        Color(
                                                                            0xFF95A1AC),
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1,
                                                                    initialized:
                                                                        bleedingValues2 !=
                                                                            null,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0, 0.15),
                                                          child: Material(
                                                            color: Colors
                                                                .transparent,
                                                            elevation: 5,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                            ),
                                                            child: Container(
                                                              width: 150,
                                                              height: 100,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.15,
                                                                        0),
                                                                child:
                                                                    FlutterFlowCheckboxGroup(
                                                                  options: [
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'gys5pxdh' /* Bedridden  */,
                                                                    )
                                                                  ],
                                                                  onChanged: (val) =>
                                                                      setState(() =>
                                                                          bedriddenValues2 =
                                                                              val),
                                                                  activeColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                  checkColor:
                                                                      Colors
                                                                          .white,
                                                                  checkboxBorderColor:
                                                                      Color(
                                                                          0xFF95A1AC),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                  initialized:
                                                                      bedriddenValues2 !=
                                                                          null,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                  tabletLandscape: false,
                                                  desktop: false,
                                                ))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 10, 10, 10),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0, 0.15),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        10),
                                                            child: Material(
                                                              color: Colors
                                                                  .transparent,
                                                              elevation: 5,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: Container(
                                                                width: 150,
                                                                height: 100,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.15,
                                                                          0),
                                                                  child:
                                                                      FlutterFlowCheckboxGroup(
                                                                    options: [
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'jhlm3z9q' /* Clinically stable  */,
                                                                      )
                                                                    ],
                                                                    onChanged: (val) =>
                                                                        setState(() =>
                                                                            clinicallystableValues2 =
                                                                                val),
                                                                    activeColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryColor,
                                                                    checkColor:
                                                                        Colors
                                                                            .white,
                                                                    checkboxBorderColor:
                                                                        Color(
                                                                            0xFF95A1AC),
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1,
                                                                    initialized:
                                                                        clinicallystableValues2 !=
                                                                            null,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0, 0.15),
                                                          child: Material(
                                                            color: Colors
                                                                .transparent,
                                                            elevation: 5,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                            ),
                                                            child: Container(
                                                              width: 150,
                                                              height: 100,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.15,
                                                                        0),
                                                                child:
                                                                    FlutterFlowCheckboxGroup(
                                                                  options: [
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'ahmccpbx' /* Bedridden  */,
                                                                    )
                                                                  ],
                                                                  onChanged: (val) =>
                                                                      setState(() =>
                                                                          bedriddenValues3 =
                                                                              val),
                                                                  activeColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                  checkColor:
                                                                      Colors
                                                                          .white,
                                                                  checkboxBorderColor:
                                                                      Color(
                                                                          0xFF95A1AC),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                  initialized:
                                                                      bedriddenValues3 !=
                                                                          null,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                FFButtonWidget(
                                                  onPressed: () async {
                                                    final nursingAssessmentUpdateData =
                                                        createNursingAssessmentRecordData(
                                                      breathlessness: functions
                                                          .getCheckboxValue(
                                                              breathlessnessValues3!
                                                                  .toList()),
                                                      restlessness: functions
                                                          .getCheckboxValue(
                                                              restlessnessValues1!
                                                                  .toList()),
                                                      painscore:
                                                          countPainValue2,
                                                      bedridden: functions
                                                          .getCheckboxValue(
                                                              bedriddenValues1!
                                                                  .toList()),
                                                    );
                                                    await containerNursingAssessmentRecord!
                                                        .reference
                                                        .update(
                                                            nursingAssessmentUpdateData);

                                                    context.pushNamed(
                                                        'PsychologicalAssesment');
                                                  },
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'p5ovm8x7' /* Next */,
                                                  ),
                                                  options: FFButtonOptions(
                                                    width: 130,
                                                    height: 40,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                        ),
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                ),
                                                StreamBuilder<
                                                    List<
                                                        NursingAssessmentRecord>>(
                                                  stream:
                                                      queryNursingAssessmentRecord(
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child:
                                                              CircularProgressIndicator(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryColor,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<NursingAssessmentRecord>
                                                        listViewNursingAssessmentRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the document does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final listViewNursingAssessmentRecord =
                                                        listViewNursingAssessmentRecordList
                                                                .isNotEmpty
                                                            ? listViewNursingAssessmentRecordList
                                                                .first
                                                            : null;
                                                    return ListView(
                                                      padding: EdgeInsets.zero,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 10),
                                                          child: Material(
                                                            color: Colors
                                                                .transparent,
                                                            elevation: 5,
                                                            child: Container(
                                                              width: 100,
                                                              height: 50,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              child: Theme(
                                                                data: ThemeData(
                                                                  unselectedWidgetColor:
                                                                      Color(
                                                                          0xFF95A1AC),
                                                                ),
                                                                child:
                                                                    CheckboxListTile(
                                                                  value: checkboxListTileValue1 ??=
                                                                      listViewNursingAssessmentRecord!
                                                                          .bleeding!,
                                                                  onChanged:
                                                                      (newValue) async {
                                                                    setState(() =>
                                                                        checkboxListTileValue1 =
                                                                            newValue!);
                                                                  },
                                                                  title: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'vnv3kdzh' /* Bleeding */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .title3
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontSize:
                                                                              16,
                                                                        ),
                                                                  ),
                                                                  tileColor: Color(
                                                                      0xFFF5F5F5),
                                                                  activeColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                  dense: false,
                                                                  controlAffinity:
                                                                      ListTileControlAffinity
                                                                          .trailing,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 10),
                                                          child: Material(
                                                            color: Colors
                                                                .transparent,
                                                            elevation: 5,
                                                            child: Container(
                                                              width: 100,
                                                              height: 50,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              child: Theme(
                                                                data: ThemeData(
                                                                  unselectedWidgetColor:
                                                                      Color(
                                                                          0xFF95A1AC),
                                                                ),
                                                                child:
                                                                    CheckboxListTile(
                                                                  value: checkboxListTileValue2 ??=
                                                                      listViewNursingAssessmentRecord!
                                                                          .breathlessness!,
                                                                  onChanged:
                                                                      (newValue) async {
                                                                    setState(() =>
                                                                        checkboxListTileValue2 =
                                                                            newValue!);
                                                                  },
                                                                  title: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'd1us1ad6' /* Breathlessness */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .title3
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontSize:
                                                                              16,
                                                                        ),
                                                                  ),
                                                                  tileColor: Color(
                                                                      0xFFF5F5F5),
                                                                  activeColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                  dense: false,
                                                                  controlAffinity:
                                                                      ListTileControlAffinity
                                                                          .trailing,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 10),
                                                          child: Material(
                                                            color: Colors
                                                                .transparent,
                                                            elevation: 5,
                                                            child: Container(
                                                              width: 100,
                                                              height: 50,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              child: Theme(
                                                                data: ThemeData(
                                                                  unselectedWidgetColor:
                                                                      Color(
                                                                          0xFF95A1AC),
                                                                ),
                                                                child:
                                                                    CheckboxListTile(
                                                                  value: checkboxListTileValue3 ??=
                                                                      listViewNursingAssessmentRecord!
                                                                          .bedridden!,
                                                                  onChanged:
                                                                      (newValue) async {
                                                                    setState(() =>
                                                                        checkboxListTileValue3 =
                                                                            newValue!);
                                                                  },
                                                                  title: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'nnk06npg' /* Bedridden */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .title3
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontSize:
                                                                              16,
                                                                        ),
                                                                  ),
                                                                  tileColor: Color(
                                                                      0xFFF5F5F5),
                                                                  activeColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                  dense: false,
                                                                  controlAffinity:
                                                                      ListTileControlAffinity
                                                                          .trailing,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 10),
                                                          child: Material(
                                                            color: Colors
                                                                .transparent,
                                                            elevation: 5,
                                                            child: Container(
                                                              width: 100,
                                                              height: 50,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              child: Theme(
                                                                data: ThemeData(
                                                                  unselectedWidgetColor:
                                                                      Color(
                                                                          0xFF95A1AC),
                                                                ),
                                                                child:
                                                                    CheckboxListTile(
                                                                  value: checkboxListTileValue4 ??=
                                                                      listViewNursingAssessmentRecord!
                                                                          .restlessness!,
                                                                  onChanged:
                                                                      (newValue) async {
                                                                    setState(() =>
                                                                        checkboxListTileValue4 =
                                                                            newValue!);
                                                                  },
                                                                  title: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'a29sntny' /* Restlessness */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .title3
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontSize:
                                                                              16,
                                                                        ),
                                                                  ),
                                                                  tileColor: Color(
                                                                      0xFFF5F5F5),
                                                                  activeColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                  dense: false,
                                                                  controlAffinity:
                                                                      ListTileControlAffinity
                                                                          .trailing,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 10),
                                                          child: Material(
                                                            color: Colors
                                                                .transparent,
                                                            elevation: 5,
                                                            child: Container(
                                                              width: 100,
                                                              height: 50,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              child: Theme(
                                                                data: ThemeData(
                                                                  unselectedWidgetColor:
                                                                      Color(
                                                                          0xFF95A1AC),
                                                                ),
                                                                child:
                                                                    CheckboxListTile(
                                                                  value: checkboxListTileValue5 ??=
                                                                      listViewNursingAssessmentRecord!
                                                                          .clinicallystable!,
                                                                  onChanged:
                                                                      (newValue) async {
                                                                    setState(() =>
                                                                        checkboxListTileValue5 =
                                                                            newValue!);
                                                                  },
                                                                  title: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'a91r02g8' /* Clinicaly stable */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .title3
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontSize:
                                                                              16,
                                                                        ),
                                                                  ),
                                                                  tileColor: Color(
                                                                      0xFFF5F5F5),
                                                                  activeColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                  dense: false,
                                                                  controlAffinity:
                                                                      ListTileControlAffinity
                                                                          .trailing,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 10),
                                                          child: Material(
                                                            color: Colors
                                                                .transparent,
                                                            elevation: 5,
                                                            child: Container(
                                                              width: 100,
                                                              height: 50,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              child: Theme(
                                                                data: ThemeData(
                                                                  unselectedWidgetColor:
                                                                      Color(
                                                                          0xFF95A1AC),
                                                                ),
                                                                child:
                                                                    CheckboxListTile(
                                                                  value: checkboxListTileValue6 ??=
                                                                      listViewNursingAssessmentRecord!
                                                                          .woundprogression!,
                                                                  onChanged:
                                                                      (newValue) async {
                                                                    setState(() =>
                                                                        checkboxListTileValue6 =
                                                                            newValue!);
                                                                  },
                                                                  title: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'k78ugoz1' /* Wound progression */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .title3
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontSize:
                                                                              16,
                                                                        ),
                                                                  ),
                                                                  tileColor: Color(
                                                                      0xFFF5F5F5),
                                                                  activeColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                  dense: false,
                                                                  controlAffinity:
                                                                      ListTileControlAffinity
                                                                          .trailing,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 10),
                                                          child: Material(
                                                            color: Colors
                                                                .transparent,
                                                            elevation: 5,
                                                            child: Container(
                                                              width: 100,
                                                              height: 50,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              child: Theme(
                                                                data: ThemeData(
                                                                  unselectedWidgetColor:
                                                                      Color(
                                                                          0xFF95A1AC),
                                                                ),
                                                                child:
                                                                    CheckboxListTile(
                                                                  value: checkboxListTileValue7 ??=
                                                                      listViewNursingAssessmentRecord!
                                                                          .nowoundsorfeedingassistance!,
                                                                  onChanged:
                                                                      (newValue) async {
                                                                    setState(() =>
                                                                        checkboxListTileValue7 =
                                                                            newValue!);
                                                                  },
                                                                  title: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'sy5hw921' /* Feeding assistance */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .title3
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontSize:
                                                                              16,
                                                                        ),
                                                                  ),
                                                                  tileColor: Color(
                                                                      0xFFF5F5F5),
                                                                  activeColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                  dense: false,
                                                                  controlAffinity:
                                                                      ListTileControlAffinity
                                                                          .trailing,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 10),
                                                          child: Material(
                                                            color: Colors
                                                                .transparent,
                                                            elevation: 5,
                                                            child: Container(
                                                              width: 100,
                                                              height: 50,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              child: Theme(
                                                                data: ThemeData(
                                                                  unselectedWidgetColor:
                                                                      Color(
                                                                          0xFF95A1AC),
                                                                ),
                                                                child:
                                                                    CheckboxListTile(
                                                                  value: checkboxListTileValue8 ??=
                                                                      listViewNursingAssessmentRecord!
                                                                          .oncatheterstoma!,
                                                                  onChanged:
                                                                      (newValue) async {
                                                                    setState(() =>
                                                                        checkboxListTileValue8 =
                                                                            newValue!);
                                                                  },
                                                                  title: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '5kp5h9m0' /* On catheter stoma */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .title3
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontSize:
                                                                              16,
                                                                        ),
                                                                  ),
                                                                  tileColor: Color(
                                                                      0xFFF5F5F5),
                                                                  activeColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                  dense: false,
                                                                  controlAffinity:
                                                                      ListTileControlAffinity
                                                                          .trailing,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
