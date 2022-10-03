import '../flutter_flow/flutter_flow_language_selector.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectlanguageWidget extends StatefulWidget {
  const SelectlanguageWidget({Key? key}) : super(key: key);

  @override
  _SelectlanguageWidgetState createState() => _SelectlanguageWidgetState();
}

class _SelectlanguageWidgetState extends State<SelectlanguageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        maxWidth: 530,
      ),
      decoration: BoxDecoration(),
      child: Align(
        alignment: AlignmentDirectional(0, 0),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'cbucuxck' /* Select  Language */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Space Grotesk',
                          fontSize: 18,
                        ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FlutterFlowLanguageSelector(
                      width: 300,
                      height: 50,
                      backgroundColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      borderColor: FlutterFlowTheme.of(context).lineColor,
                      dropdownIconColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      borderRadius: 40,
                      textStyle: TextStyle(
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                      hideFlags: false,
                      flagTextGap: 8,
                      currentLanguage: FFLocalizations.of(context).languageCode,
                      languages: FFLocalizations.languages(),
                      onChanged: (lang) => setAppLanguage(context, lang),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
