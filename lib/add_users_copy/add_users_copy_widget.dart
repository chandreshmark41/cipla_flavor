import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddUsersCopyWidget extends StatefulWidget {
  const AddUsersCopyWidget({Key? key}) : super(key: key);

  @override
  _AddUsersCopyWidgetState createState() => _AddUsersCopyWidgetState();
}

class _AddUsersCopyWidgetState extends State<AddUsersCopyWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
    );
  }
}
