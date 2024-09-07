import '/components/alert_dialog_delete_account_widget.dart';
import '/components/bottomsheet_change_language_widget.dart';
import '/components/custom_confirm_dialog_widget.dart';
import '/components/settings_option_widget.dart';
import '/components/user_name_icon_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'settings_model.dart';
export 'settings_model.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({super.key});

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  late SettingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 150.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.95,
                              decoration: const BoxDecoration(),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 18.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '2l9eplby' /* Settings */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Inter',
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 28.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model: _model.userNameIconModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: const UserNameIconWidget(
                                              size: 48.0,
                                              fontSize: 20.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'r3tu0ri4' /* Joe Doe */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            const Color(0xFF212121),
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'cypi8362' /* joedoe@gmail.com */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            const Color(0xFF424242),
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ],
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
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      barrierColor: const Color(0x33424242),
                                      context: context,
                                      builder: (context) {
                                        return GestureDetector(
                                          onTap: () =>
                                              FocusScope.of(context).unfocus(),
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child:
                                                const BottomsheetChangeLanguageWidget(),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  },
                                  child: wrapWithModel(
                                    model: _model.settingsOptionLanguageModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: SettingsOptionWidget(
                                      label:
                                          FFLocalizations.of(context).getText(
                                        'z6l4z05o' /* Choose language */,
                                      ),
                                      icon: Icon(
                                        Icons.translate,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 24.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Builder(
                                  builder: (context) => InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      var shouldSetState = false;
                                      await showDialog(
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: const AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: GestureDetector(
                                              onTap: () =>
                                                  FocusScope.of(dialogContext)
                                                      .unfocus(),
                                              child: SizedBox(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.85,
                                                child:
                                                    CustomConfirmDialogWidget(
                                                  title: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '9k130f6f' /* Reset password */,
                                                  ),
                                                  message:
                                                      '${FFLocalizations.of(context).getVariableText(
                                                    enText:
                                                        'Upon confirmation, an email will be sent to ',
                                                    ptText:
                                                        'Ao confirmar, um e-mail será enviado para ',
                                                  )}[USER_EMAIL]${FFLocalizations.of(context).getVariableText(
                                                    enText:
                                                        ' with a link to change your password.',
                                                    ptText:
                                                        ' com um link para alterar sua senha.',
                                                  )}',
                                                  cancelLabel:
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                    'ytxm8o05' /* Cancel */,
                                                  ),
                                                  confirmLabel:
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                    'of5k9y8y' /* Confirm */,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(
                                          () => _model.confirmReset = value));

                                      shouldSetState = true;
                                      if (!_model.confirmReset!) {
                                        if (shouldSetState) {
                                          safeSetState(() {});
                                        }
                                        return;
                                      }
                                      if (shouldSetState) safeSetState(() {});
                                    },
                                    child: wrapWithModel(
                                      model: _model.settingsOptionResetModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SettingsOptionWidget(
                                        label:
                                            FFLocalizations.of(context).getText(
                                          'mclatdop' /* Reset password */,
                                        ),
                                        icon: Icon(
                                          Icons.lock_reset,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Builder(
                                  builder: (context) => InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      var shouldSetState = false;
                                      await showDialog(
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: const AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: GestureDetector(
                                              onTap: () =>
                                                  FocusScope.of(dialogContext)
                                                      .unfocus(),
                                              child: SizedBox(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.85,
                                                child:
                                                    CustomConfirmDialogWidget(
                                                  title: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '0x9bn4uq' /* Logout */,
                                                  ),
                                                  message: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'ayj7zciz' /* Do you really want to get out ... */,
                                                  ),
                                                  cancelLabel:
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                    'u77kd0xv' /* Cancel */,
                                                  ),
                                                  confirmLabel:
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                    'x1zlnj43' /* Confirm */,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(
                                          () => _model.confirmLogout = value));

                                      shouldSetState = true;
                                      if (_model.confirmLogout!) {
                                        if (Navigator.of(context).canPop()) {
                                          context.pop();
                                        }
                                        context.pushNamed(
                                          'login',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                            ),
                                          },
                                        );
                                      } else {
                                        if (shouldSetState) {
                                          safeSetState(() {});
                                        }
                                        return;
                                      }

                                      if (shouldSetState) safeSetState(() {});
                                    },
                                    child: wrapWithModel(
                                      model: _model.settingsOptionLogoutModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SettingsOptionWidget(
                                        label:
                                            FFLocalizations.of(context).getText(
                                          'rs270oa8' /* Logout */,
                                        ),
                                        icon: Icon(
                                          Icons.logout,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Builder(
                                  builder: (context) => InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      var shouldSetState = false;
                                      await showDialog(
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: const AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: GestureDetector(
                                              onTap: () =>
                                                  FocusScope.of(dialogContext)
                                                      .unfocus(),
                                              child: SizedBox(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.85,
                                                child:
                                                    const AlertDialogDeleteAccountWidget(),
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(
                                          () => _model.confirmDelete = value));

                                      shouldSetState = true;
                                      if (_model.confirmDelete!) {
                                        if (Navigator.of(context).canPop()) {
                                          context.pop();
                                        }
                                        context.pushNamed(
                                          'login',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .rightToLeft,
                                            ),
                                          },
                                        );
                                      } else {
                                        if (shouldSetState) {
                                          safeSetState(() {});
                                        }
                                        return;
                                      }

                                      if (shouldSetState) safeSetState(() {});
                                    },
                                    child: wrapWithModel(
                                      model: _model.settingsOptionDeleteModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SettingsOptionWidget(
                                        label:
                                            FFLocalizations.of(context).getText(
                                          'e5cc1y17' /* Delete account */,
                                        ),
                                        icon: Icon(
                                          Icons.no_accounts_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Configure payment gateway',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        duration: const Duration(milliseconds: 4000),
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                      ),
                                    );
                                  },
                                  child: wrapWithModel(
                                    model: _model.settingsOptionDonateModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: SettingsOptionWidget(
                                      label:
                                          FFLocalizations.of(context).getText(
                                        'pao7utco' /* Donate */,
                                      ),
                                      icon: const FaIcon(
                                        FontAwesomeIcons.donate,
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
            ],
          ),
        ),
      ),
    );
  }
}
