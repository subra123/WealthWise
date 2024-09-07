import '/components/month_picker_dialog_widget.dart';
import '/components/user_name_icon_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'initial_model.dart';
export 'initial_model.dart';

class InitialWidget extends StatefulWidget {
  const InitialWidget({super.key});

  @override
  State<InitialWidget> createState() => _InitialWidgetState();
}

class _InitialWidgetState extends State<InitialWidget>
    with TickerProviderStateMixin {
  late InitialModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasTextTriggered = false;
  var hasContainerTriggered = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InitialModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().queryTimestamps = functions
          .getExpenseListForTimestamp(FFAppState().allExpenses.toList(),
              FFAppState().month, FFAppState().year)!
          .toList()
          .cast<int>();
      safeSetState(() {});
    });

    animationsMap.addAll({
      'textOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.0, 10.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        applyInitialState: false,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.0, 10.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    SchedulerBinding.instance.addPostFrameCallback((_) {
      animationsMap['containerOnPageLoadAnimation']!
          .controller
          .forward(from: 0.0);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.95,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 45.0),
                              child: Stack(
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 8.0),
                                        child: Container(
                                          width: 100.0,
                                          height: 60.0,
                                          decoration: const BoxDecoration(
                                            color: Color(0x004B39EF),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/logo.png',
                                                  width: 32.0,
                                                  height: 32.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          6.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'pxfeuk07' /* Kitty */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ).animateOnActionTrigger(
                                                      animationsMap[
                                                          'textOnActionTriggerAnimation']!,
                                                      hasBeenTriggered:
                                                          hasTextTriggered),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 16.0, 0.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        const Color(0x004B39EF),
                                                    borderRadius: 20.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 40.0,
                                                    fillColor:
                                                        const Color(0x004B39EF),
                                                    icon: FaIcon(
                                                      FontAwesomeIcons.search,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 24.0,
                                                    ),
                                                    onPressed: () async {
                                                      context.pushNamed(
                                                        'searchScreen',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              const TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .scale,
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    600),
                                                          ),
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model.userNameIconModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const UserNameIconWidget(),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: FlutterFlowIconButton(
                                              borderColor: const Color(0x004B39EF),
                                              borderRadius: 20.0,
                                              borderWidth: 1.0,
                                              buttonSize: 40.0,
                                              fillColor: const Color(0x004B39EF),
                                              icon: Icon(
                                                Icons.arrow_back_ios,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 24.0,
                                              ),
                                              onPressed: () async {
                                                if (FFAppState().month ==
                                                  1) {
                                                FFAppState().month = 12;
                                                FFAppState().year =
                                                    FFAppState().year + -1;
                                                safeSetState(() {});
                                              } else {
                                                FFAppState().month =
                                                    FFAppState().month + -1;
                                                safeSetState(() {});
                                              }

                                                FFAppState().queryTimestamps =
                                                    functions
                                                        .getExpenseListForTimestamp(
                                                            FFAppState()
                                                                .allExpenses
                                                                .toList(),
                                                            FFAppState().month,
                                                            FFAppState().year)!
                                                        .toList()
                                                        .cast<int>();
                                                safeSetState(() {});
                                                if (animationsMap[
                                                        'containerOnActionTriggerAnimation'] !=
                                                    null) {
                                                  safeSetState(() =>
                                                      hasContainerTriggered =
                                                          true);
                                                  SchedulerBinding.instance
                                                      .addPostFrameCallback(
                                                          (_) async =>
                                                              await animationsMap[
                                                                      'containerOnActionTriggerAnimation']!
                                                                  .controller
                                                                  .forward(
                                                                      from:
                                                                          0.0));
                                                }
                                              },
                                            ),
                                          ),
                                          Builder(
                                            builder: (context) =>
                                                FFButtonWidget(
                                              onPressed: () async {
                                                if (FFAppState().month == 0) {
                                                  FFAppState().month =
                                                      functions.getMonthNumber(
                                                          getCurrentTimestamp
                                                              .millisecondsSinceEpoch)!;
                                                  safeSetState(() {});
                                                }
                                                await showDialog(
                                                  barrierColor:
                                                      const Color(0x004B39EF),
                                                  context: context,
                                                  builder: (dialogContext) {
                                                    return Dialog(
                                                      elevation: 0,
                                                      insetPadding:
                                                          EdgeInsets.zero,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      alignment:
                                                          const AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      child: GestureDetector(
                                                        onTap: () =>
                                                            FocusScope.of(
                                                                    dialogContext)
                                                                .unfocus(),
                                                        child: SizedBox(
                                                          height: 270.0,
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.9,
                                                          child:
                                                              MonthPickerDialogWidget(
                                                            currentMonth:
                                                                FFAppState()
                                                                    .month,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) => safeSetState(
                                                    () => _model.monthPicker =
                                                        value));

                                                if (_model.monthPicker !=
                                                    null) {
                                                  if (FFAppState().year == 0) {
                                                    FFAppState().year = functions
                                                        .getYearFromTimestamp(
                                                            getCurrentTimestamp
                                                                .millisecondsSinceEpoch)!;
                                                    safeSetState(() {});
                                                  }
                                                  FFAppState().month =
                                                      _model.monthPicker!;
                                                  safeSetState(() {});
                                                } else {
                                                  FFAppState().month = 0;
                                                  FFAppState().year = 0;
                                                  safeSetState(() {});
                                                }

                                                FFAppState().queryTimestamps =
                                                    functions
                                                        .getExpenseListForTimestamp(
                                                            FFAppState()
                                                                .allExpenses
                                                                .toList(),
                                                            FFAppState().month,
                                                            FFAppState().year)!
                                                        .toList()
                                                        .cast<int>();
                                                safeSetState(() {});
                                                if (animationsMap[
                                                        'containerOnActionTriggerAnimation'] !=
                                                    null) {
                                                  safeSetState(() =>
                                                      hasContainerTriggered =
                                                          true);
                                                  SchedulerBinding.instance
                                                      .addPostFrameCallback(
                                                          (_) async =>
                                                              await animationsMap[
                                                                      'containerOnActionTriggerAnimation']!
                                                                  .controller
                                                                  .forward(
                                                                      from:
                                                                          0.0));
                                                }

                                                safeSetState(() {});
                                              },
                                              text: FFAppState().month == 0
                                                  ? FFLocalizations.of(context)
                                                      .getVariableText(
                                                      enText: 'All Time',
                                                      ptText: 'Tudo',
                                                    )
                                                  : '${functions.getMonthName(FFAppState().month, FFLocalizations.of(context).languageCode)}, ${FFAppState().year.toString()}',
                                              icon: Icon(
                                                Icons.date_range,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 16.0,
                                              ),
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: const Color(0xFFE0E0E0),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                elevation: 0.0,
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 0.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(50.0),
                                              ),
                                            ),
                                          ),
                                          FlutterFlowIconButton(
                                            borderColor: const Color(0x004B39EF),
                                            borderRadius: 20.0,
                                            borderWidth: 1.0,
                                            buttonSize: 40.0,
                                            fillColor: const Color(0x004B39EF),
                                            icon: Icon(
                                              Icons.arrow_forward_ios,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                            onPressed: () async {
                                              if (() {
                                                if (FFAppState().month == 0) {
                                                  return true;
                                                } else if (FFAppState().year ==
                                                    0) {
                                                  return true;
                                                } else {
                                                  return false;
                                                }
                                              }()) {
                                                FFAppState().month =
                                                    functions.getMonthNumber(
                                                        getCurrentTimestamp
                                                            .millisecondsSinceEpoch)!;
                                                FFAppState().year = functions
                                                    .getYearFromTimestamp(
                                                        getCurrentTimestamp
                                                            .millisecondsSinceEpoch)!;
                                                safeSetState(() {});
                                              } else if (FFAppState().month ==
                                                  12) {
                                                FFAppState().month = 1;
                                                FFAppState().year =
                                                    FFAppState().year + 1;
                                                safeSetState(() {});
                                              } else {
                                                FFAppState().month =
                                                    FFAppState().month + 1;
                                                safeSetState(() {});
                                              }

                                              FFAppState().queryTimestamps =
                                                  functions
                                                      .getExpenseListForTimestamp(
                                                          FFAppState()
                                                              .allExpenses
                                                              .toList(),
                                                          FFAppState().month,
                                                          FFAppState().year)!
                                                      .toList()
                                                      .cast<int>();
                                              safeSetState(() {});
                                              if (animationsMap[
                                                      'containerOnActionTriggerAnimation'] !=
                                                  null) {
                                                safeSetState(() =>
                                                    hasContainerTriggered =
                                                        true);
                                                SchedulerBinding.instance
                                                    .addPostFrameCallback(
                                                        (_) async =>
                                                            await animationsMap[
                                                                    'containerOnActionTriggerAnimation']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0));
                                              }
                                            },
                                          ),
                                        ],
                                      ),
                                      Expanded(
                                        child: Container(
                                          width: 100.0,
                                          decoration: const BoxDecoration(
                                            color: Color(0x004B39EF),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              if (FFAppState()
                                                      .queryTimestamps.isNotEmpty)
                                                Expanded(
                                                  child: SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      20.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: const Color(
                                                                  0x004B39EF),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color: const Color(
                                                                    0xFFE0E0E0),
                                                                width: 1.0,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          16.0,
                                                                          24.0,
                                                                          16.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .payments_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      AutoSizeText(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          formatNumber(
                                                                            functions.sumAmountByType(functions.getExpensesWithinTimestamps(FFAppState().allExpenses.toList(), FFAppState().queryTimestamps.toList()).toList(),
                                                                                'EXPENSE'),
                                                                            formatType:
                                                                                FormatType.decimal,
                                                                            decimalType:
                                                                                DecimalType.commaDecimal,
                                                                            currency:
                                                                                'R\$ ',
                                                                          ),
                                                                          '0.0',
                                                                        ).maybeHandleOverflow(
                                                                          maxChars:
                                                                              10,
                                                                          replacement:
                                                                              '…',
                                                                        ),
                                                                        minFontSize:
                                                                            10.0,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Inter',
                                                                              color: FlutterFlowTheme.of(context).error,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'd7h63cn1' /* Expenses */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Inter',
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .account_balance_wallet_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      AutoSizeText(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          formatNumber(
                                                                            functions.sumAmountByType(functions.getExpensesWithinTimestamps(FFAppState().allExpenses.toList(), FFAppState().queryTimestamps.toList()).toList(),
                                                                                'ALL'),
                                                                            formatType:
                                                                                FormatType.decimal,
                                                                            decimalType:
                                                                                DecimalType.commaDecimal,
                                                                            currency:
                                                                                'R\$ ',
                                                                          ),
                                                                          '0.0',
                                                                        ).maybeHandleOverflow(
                                                                          maxChars:
                                                                              10,
                                                                          replacement:
                                                                              '…',
                                                                        ),
                                                                        minFontSize:
                                                                            10.0,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Inter',
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w600,
                                                                            ),
                                                                      ),
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '0uznn4nj' /* Balance */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Inter',
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .account_balance_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      AutoSizeText(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          formatNumber(
                                                                            functions.sumAmountByType(functions.getExpensesWithinTimestamps(FFAppState().allExpenses.toList(), FFAppState().queryTimestamps.toList()).toList(),
                                                                                'INVOICE'),
                                                                            formatType:
                                                                                FormatType.decimal,
                                                                            decimalType:
                                                                                DecimalType.commaDecimal,
                                                                            currency:
                                                                                'R\$ ',
                                                                          ),
                                                                          '0.0',
                                                                        ).maybeHandleOverflow(
                                                                          maxChars:
                                                                              10,
                                                                          replacement:
                                                                              '…',
                                                                        ),
                                                                        minFontSize:
                                                                            10.0,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Inter',
                                                                              color: FlutterFlowTheme.of(context).success,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'kcpcr69v' /* Income */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Inter',
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Builder(
                                                          builder: (context) {
                                                            final timestamp =
                                                                FFAppState()
                                                                    .queryTimestamps
                                                                    .toList();

                                                            return ListView
                                                                .builder(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .fromLTRB(
                                                                0,
                                                                0,
                                                                0,
                                                                90.0,
                                                              ),
                                                              primary: false,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  timestamp
                                                                      .length,
                                                              itemBuilder: (context,
                                                                  timestampIndex) {
                                                                final timestampItem =
                                                                    timestamp[
                                                                        timestampIndex];
                                                                return Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        100.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color(
                                                                          0x004B39EF),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: const Color(
                                                                            0xFFE0E0E0),
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.all(8.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                valueOrDefault<String>(
                                                                                  functions.formatDateOrRelative(timestampItem),
                                                                                  '0',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Inter',
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                              Text(
                                                                                formatNumber(
                                                                                  functions.sumAmountsForTimestamp(timestampItem, FFAppState().allExpenses.toList()),
                                                                                  formatType: FormatType.decimal,
                                                                                  decimalType: DecimalType.commaDecimal,
                                                                                  currency: 'R\$ ',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Inter',
                                                                                      color: () {
                                                                                        if (functions.sumAmountsForTimestamp(timestampItem, FFAppState().allExpenses.toList())! > 0.0) {
                                                                                          return FlutterFlowTheme.of(context).success;
                                                                                        } else if (functions.sumAmountsForTimestamp(timestampItem, FFAppState().allExpenses.toList())! < 0.0) {
                                                                                          return FlutterFlowTheme.of(context).error;
                                                                                        } else {
                                                                                          return FlutterFlowTheme.of(context).primaryText;
                                                                                        }
                                                                                      }(),
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              8.0,
                                                                              8.0),
                                                                          child:
                                                                              Builder(
                                                                            builder:
                                                                                (context) {
                                                                              final expense = functions.getExpensesFromTimestamp(timestampItem, FFAppState().allExpenses.toList())?.toList() ?? [];

                                                                              return Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: List.generate(expense.length, (expenseIndex) {
                                                                                  final expenseItem = expense[expenseIndex];
                                                                                  return InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      context.pushNamed(
                                                                                        'editExpense',
                                                                                        queryParameters: {
                                                                                          'expenseId': serializeParam(
                                                                                            expenseIndex,
                                                                                            ParamType.int,
                                                                                          ),
                                                                                        }.withoutNulls,
                                                                                        extra: <String, dynamic>{
                                                                                          kTransitionInfoKey: const TransitionInfo(
                                                                                            hasTransition: true,
                                                                                            transitionType: PageTransitionType.scale,
                                                                                            alignment: Alignment.bottomCenter,
                                                                                            duration: Duration(milliseconds: 600),
                                                                                          ),
                                                                                        },
                                                                                      );
                                                                                    },
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Container(
                                                                                          width: 40.0,
                                                                                          height: 40.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            borderRadius: BorderRadius.circular(100.0),
                                                                                          ),
                                                                                          child: Container(
                                                                                            width: 120.0,
                                                                                            height: 120.0,
                                                                                            clipBehavior: Clip.antiAlias,
                                                                                            decoration: const BoxDecoration(
                                                                                              shape: BoxShape.circle,
                                                                                            ),
                                                                                            child: Image.network(
                                                                                              functions.getAssetFromCategory(expenseItem.category)!,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                if (expenseItem.description != '')
                                                                                                  Text(
                                                                                                    expenseItem.description,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: 'Inter',
                                                                                                          letterSpacing: 0.0,
                                                                                                        ),
                                                                                                  ),
                                                                                                Text(
                                                                                                  functions.getCategoryLabel(expenseItem.category, FFLocalizations.of(context).languageCode)!,
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: 'Inter',
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Text(
                                                                                          formatNumber(
                                                                                            expenseItem.amount,
                                                                                            formatType: FormatType.decimal,
                                                                                            decimalType: DecimalType.commaDecimal,
                                                                                            currency: 'R\$ ',
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Inter',
                                                                                                color: () {
                                                                                                  if (expenseItem.amount > 0.0) {
                                                                                                    return FlutterFlowTheme.of(context).success;
                                                                                                  } else if (expenseItem.amount < 0.0) {
                                                                                                    return FlutterFlowTheme.of(context).error;
                                                                                                  } else {
                                                                                                    return FlutterFlowTheme.of(context).primaryText;
                                                                                                  }
                                                                                                }(),
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  );
                                                                                }).divide(const SizedBox(height: 10.0)),
                                                                              );
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              if (FFAppState()
                                                      .queryTimestamps.isEmpty)
                                                Expanded(
                                                  child: Lottie.asset(
                                                    'assets/lottie_animations/animation_lllbg02q.json',
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        1.0,
                                                    height: 100.0,
                                                    fit: BoxFit.contain,
                                                    repeat: false,
                                                    animate: true,
                                                  ),
                                                ),
                                            ],
                                          ),
                                        )
                                            .animateOnPageLoad(animationsMap[
                                                'containerOnPageLoadAnimation']!)
                                            .animateOnActionTrigger(
                                                animationsMap[
                                                    'containerOnActionTriggerAnimation']!,
                                                hasBeenTriggered:
                                                    hasContainerTriggered),
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 32.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          context.pushNamed(
                                            'createExpense',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.scale,
                                                alignment:
                                                    Alignment.bottomCenter,
                                                duration:
                                                    Duration(milliseconds: 600),
                                              ),
                                            },
                                          );
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          '6z2w3uwy' /* Add new */,
                                        ),
                                        icon: const Icon(
                                          Icons.add_circle,
                                          size: 15.0,
                                        ),
                                        options: FFButtonOptions(
                                          height: 50.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: Colors.white,
                                                    letterSpacing: 0.0,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(44.0),
                                        ),
                                      ),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
