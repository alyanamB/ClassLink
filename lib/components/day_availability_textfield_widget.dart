import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'day_availability_textfield_model.dart';
export 'day_availability_textfield_model.dart';

class DayAvailabilityTextfieldWidget extends StatefulWidget {
  const DayAvailabilityTextfieldWidget({super.key});

  @override
  State<DayAvailabilityTextfieldWidget> createState() =>
      _DayAvailabilityTextfieldWidgetState();
}

class _DayAvailabilityTextfieldWidgetState
    extends State<DayAvailabilityTextfieldWidget> {
  late DayAvailabilityTextfieldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DayAvailabilityTextfieldModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 203.68,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'To be made ... after I fix courses textfields :(',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Inter',
                  letterSpacing: 0.0,
                ),
          ),
        ],
      ),
    );
  }
}
