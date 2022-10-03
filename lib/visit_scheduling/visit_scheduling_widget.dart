import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';

class VisitSchedulingWidget extends StatefulWidget {
  const VisitSchedulingWidget({
    Key? key,
    this.caseId,
    this.currentPriority,
    this.compass,
  }) : super(key: key);

  final DocumentReference? caseId;
  final String? currentPriority;
  final String? compass;

  @override
  _VisitSchedulingWidgetState createState() => _VisitSchedulingWidgetState();
}

class _VisitSchedulingWidgetState extends State<VisitSchedulingWidget> {
  DateTime? datePicked;
  String? selectDoctorValue;
  String? selectNurseValue;
  String? selectMSWValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_outlined,
            color: FlutterFlowTheme.of(context).primaryBtnText,
            size: 30,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'dynlqr2g' /* Schedule Visit */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  FlutterFlowTheme.of(context).secondaryBackground,
                  FlutterFlowTheme.of(context).secondaryColor
                ],
                stops: [0.3, 1],
                begin: AlignmentDirectional(1, -1),
                end: AlignmentDirectional(-1, 1),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 50,
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 10, 0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'aviltmkm' /* Select Doctor */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 0, 0),
                                          child: StreamBuilder<
                                              List<AddedUsersRecord>>(
                                            stream: queryAddedUsersRecord(
                                              queryBuilder:
                                                  (addedUsersRecord) =>
                                                      addedUsersRecord.where(
                                                          'role',
                                                          isEqualTo: 'Doctor'),
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<AddedUsersRecord>
                                                  selectDoctorAddedUsersRecordList =
                                                  snapshot.data!;
                                              return FlutterFlowDropDown(
                                                options:
                                                    selectDoctorAddedUsersRecordList
                                                        .map((e) => e.uid!)
                                                        .toList()
                                                        .toList(),
                                                onChanged: (val) => setState(
                                                    () => selectDoctorValue =
                                                        val),
                                                width: 180,
                                                height: 50,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                        ),
                                                hintText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'ctj80vbj' /* Please select... */,
                                                ),
                                                elevation: 2,
                                                borderColor: Colors.transparent,
                                                borderWidth: 0,
                                                borderRadius: 0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(12, 4, 12, 4),
                                                hidesUnderline: true,
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 50,
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 10, 0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'u0714x0s' /* Select Nurse */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 0, 0),
                                          child: StreamBuilder<
                                              List<AddedUsersRecord>>(
                                            stream: queryAddedUsersRecord(
                                              queryBuilder:
                                                  (addedUsersRecord) =>
                                                      addedUsersRecord.where(
                                                          'role',
                                                          isEqualTo: 'Nurse'),
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<AddedUsersRecord>
                                                  selectNurseAddedUsersRecordList =
                                                  snapshot.data!;
                                              return FlutterFlowDropDown(
                                                options:
                                                    selectNurseAddedUsersRecordList
                                                        .map((e) => e.uid!)
                                                        .toList()
                                                        .toList(),
                                                onChanged: (val) => setState(
                                                    () =>
                                                        selectNurseValue = val),
                                                width: 180,
                                                height: 50,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                        ),
                                                hintText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'p6o0ep90' /* Please select... */,
                                                ),
                                                elevation: 2,
                                                borderColor: Colors.transparent,
                                                borderWidth: 0,
                                                borderRadius: 0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(12, 4, 12, 4),
                                                hidesUnderline: true,
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 50,
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 10, 0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'ewajvq9l' /* Select MSW */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 0, 0),
                                          child: StreamBuilder<
                                              List<AddedUsersRecord>>(
                                            stream: queryAddedUsersRecord(
                                              queryBuilder:
                                                  (addedUsersRecord) =>
                                                      addedUsersRecord.where(
                                                          'role',
                                                          isEqualTo: 'MSW'),
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<AddedUsersRecord>
                                                  selectMSWAddedUsersRecordList =
                                                  snapshot.data!;
                                              return FlutterFlowDropDown(
                                                options:
                                                    selectMSWAddedUsersRecordList
                                                        .map((e) => e.uid!)
                                                        .toList()
                                                        .toList(),
                                                onChanged: (val) => setState(
                                                    () => selectMSWValue = val),
                                                width: 180,
                                                height: 50,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.black,
                                                        ),
                                                hintText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  '062mkvsg' /* Please select... */,
                                                ),
                                                elevation: 2,
                                                borderColor: Colors.transparent,
                                                borderWidth: 0,
                                                borderRadius: 0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(12, 4, 12, 4),
                                                hidesUnderline: true,
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 50,
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 70, 0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              datePicked?.toString(),
                                              'Select Date',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 90, 0),
                                          child: InkWell(
                                            onTap: () async {
                                              await DatePicker.showDatePicker(
                                                context,
                                                showTitleActions: true,
                                                onConfirm: (date) {
                                                  setState(
                                                      () => datePicked = date);
                                                },
                                                currentTime:
                                                    getCurrentTimestamp,
                                                minTime: getCurrentTimestamp,
                                                locale: LocaleType.values
                                                    .firstWhere(
                                                  (l) =>
                                                      l.name ==
                                                      FFLocalizations.of(
                                                              context)
                                                          .languageCode,
                                                  orElse: () => LocaleType.en,
                                                ),
                                              );
                                            },
                                            child: Icon(
                                              Icons.date_range_rounded,
                                              color: Colors.black,
                                              size: 35,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      final visitsCreateData =
                                          createVisitsRecordData(
                                        caseId: widget.caseId,
                                        scheduledDate: datePicked,
                                        createdOn: datePicked,
                                        currentPriority: widget.currentPriority,
                                        updatedPriority: 'Not Set',
                                        status: 'Scheduled',
                                        visitNotes: 'empty',
                                        doctorId: valueOrDefault<String>(
                                          selectDoctorValue,
                                          'NA',
                                        ),
                                        nurseId: valueOrDefault<String>(
                                          selectNurseValue,
                                          'NA',
                                        ),
                                        mswId: valueOrDefault<String>(
                                          selectMSWValue,
                                          'NA',
                                        ),
                                        isCompleted: false,
                                      );
                                      await VisitsRecord.collection
                                          .doc()
                                          .set(visitsCreateData);
                                      var confirmDialogResponse =
                                          await showDialog<bool>(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    title: Text('Added'),
                                                    content: Text(
                                                        'Schedule is updated'),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext,
                                                                false),
                                                        child: Text('Cancel'),
                                                      ),
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext,
                                                                true),
                                                        child: Text('Confirm'),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ) ??
                                              false;
                                      if (confirmDialogResponse) {
                                        context
                                            .pushNamed('highPriorityCasesCopy');
                                      }
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'dr7r2nxw' /* Submit */,
                                    ),
                                    options: FFButtonOptions(
                                      width: 140,
                                      height: 40,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
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
          ),
        ),
      ),
    );
  }
}
