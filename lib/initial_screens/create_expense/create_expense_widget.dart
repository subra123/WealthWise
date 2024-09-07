import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'create_expense_model.dart';
export 'create_expense_model.dart';

class CreateExpenseWidget extends StatefulWidget {
  const CreateExpenseWidget({super.key});

  @override
  State<CreateExpenseWidget> createState() => _CreateExpenseWidgetState();
}

class _CreateExpenseWidgetState extends State<CreateExpenseWidget> {
  late CreateExpenseModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateExpenseModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).accent4,
          iconTheme:
              IconThemeData(color: FlutterFlowTheme.of(context).primaryText),
          automaticallyImplyLeading: true,
          title: Text(
            FFLocalizations.of(context).getText(
              'zhym1v85' /* Add new */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Inter',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Form(
                  key: _model.formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        FlutterFlowDropDown<String>(
                          controller: _model.typeDropdownValueController ??=
                              FormFieldController<String>(
                            _model.typeDropdownValue ??= 'INVOICE',
                          ),
                          options: List<String>.from(['EXPENSE', 'INVOICE']),
                          optionLabels: [
                            FFLocalizations.of(context).getText(
                              '9acdjdrd' /* Expense */,
                            ),
                            FFLocalizations.of(context).getText(
                              'u0a7tcan' /* Invoice */,
                            )
                          ],
                          onChanged: (val) => safeSetState(
                              () => _model.typeDropdownValue = val),
                          width: 300.0,
                          height: 50.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: FFLocalizations.of(context).getText(
                            '3klurzok' /* Income/Budget */,
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 8.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 4.0, 12.0, 4.0),
                          hidesUnderline: true,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 1.0),
                          child: FlutterFlowDropDown<String>(
                            controller:
                                _model.categoryDropdownValueController ??=
                                    FormFieldController<String>(
                              _model.categoryDropdownValue ??= '',
                            ),
                            options: List<String>.from([
                              'CAFE',
                              'DONATE',
                              'EDUCATION',
                              'ELECTRONICS',
                              'FUEL',
                              'GIFTS',
                              'GROCERIES',
                              'HEALTH',
                              'INSTITUTE',
                              'LAUNDRY',
                              'LIQUOR',
                              'MAINTENANCE',
                              'PARTY',
                              'RESTAURANT',
                              'SAVINGS',
                              'SELF DEVELOPMENT',
                              'SPORT',
                              'TRANSPORTATION'
                            ]),
                            optionLabels: [
                              FFLocalizations.of(context).getText(
                                '9aedrjo6' /* Cafe */,
                              ),
                              FFLocalizations.of(context).getText(
                                'qtnqe1gr' /* Donate */,
                              ),
                              FFLocalizations.of(context).getText(
                                '01q69rbk' /* Education */,
                              ),
                              FFLocalizations.of(context).getText(
                                'xgex1toh' /* Electronics */,
                              ),
                              FFLocalizations.of(context).getText(
                                'wpbca363' /* Fuel */,
                              ),
                              FFLocalizations.of(context).getText(
                                'k3dp84tb' /* Gifts */,
                              ),
                              FFLocalizations.of(context).getText(
                                '01ofez8y' /* Groceries */,
                              ),
                              FFLocalizations.of(context).getText(
                                'wniujuhd' /* Health */,
                              ),
                              FFLocalizations.of(context).getText(
                                'imwgy8r6' /* Institute */,
                              ),
                              FFLocalizations.of(context).getText(
                                'qkpmudg0' /* Laundry */,
                              ),
                              FFLocalizations.of(context).getText(
                                '41nxlk99' /* Liquor */,
                              ),
                              FFLocalizations.of(context).getText(
                                'y76rocai' /* Maintenance */,
                              ),
                              FFLocalizations.of(context).getText(
                                '2g5bblws' /* Party */,
                              ),
                              FFLocalizations.of(context).getText(
                                '3x9rfu5h' /* Resturant */,
                              ),
                              FFLocalizations.of(context).getText(
                                '3755zwmx' /* Savings */,
                              ),
                              FFLocalizations.of(context).getText(
                                'vxa67gbw' /* Self Development */,
                              ),
                              FFLocalizations.of(context).getText(
                                '9megapk5' /* Sport */,
                              ),
                              FFLocalizations.of(context).getText(
                                'cqknees2' /* Transportation */,
                              )
                            ],
                            onChanged: (val) => safeSetState(
                                () => _model.categoryDropdownValue = val),
                            width: 300.0,
                            height: 50.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                            hintText: FFLocalizations.of(context).getText(
                              'dnb6be8k' /* Select Category */,
                            ),
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor: FlutterFlowTheme.of(context).alternate,
                            borderWidth: 2.0,
                            borderRadius: 8.0,
                            margin: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 4.0, 12.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: TextFormField(
                            controller: _model.textController1,
                            focusNode: _model.textFieldFocusNode1,
                            autofocus: false,
                            textCapitalization: TextCapitalization.none,
                            textInputAction: TextInputAction.next,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                'gwjpp0l1' /* Enter amount */,
                              ),
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                              errorStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context).error,
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                            keyboardType: const TextInputType.numberWithOptions(
                                decimal: true),
                            validator: _model.textController1Validator
                                .asValidator(context),
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp('^[0-9.]*\$'))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 12.0),
                          child: TextFormField(
                            controller: _model.textController2,
                            focusNode: _model.textFieldFocusNode2,
                            autofocus: false,
                            textCapitalization: TextCapitalization.none,
                            textInputAction: TextInputAction.done,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                'tf6lw3vg' /* Description (Optional) */,
                              ),
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                            validator: _model.textController2Validator
                                .asValidator(context),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            final datePickedDate = await showDatePicker(
                              context: context,
                              initialDate: getCurrentTimestamp,
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2050),
                            );

                            if (datePickedDate != null) {
                              safeSetState(() {
                                _model.datePicked = DateTime(
                                  datePickedDate.year,
                                  datePickedDate.month,
                                  datePickedDate.day,
                                );
                              });
                            }
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.date_range,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    6.0, 12.0, 0.0, 12.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    dateTimeFormat(
                                      "dd/MM/yyyy",
                                      _model.datePicked,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ),
                                    'Selecionar data',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () {
                              if (_model.typeDropdownValue == null ||
                                  _model.typeDropdownValue == '') {
                                return true;
                              } else if (_model.categoryDropdownValue == null ||
                                  _model.categoryDropdownValue == '') {
                                return true;
                              } else if (_model.textController1.text == '') {
                                return true;
                              } else if (_model.datePicked == null) {
                                return true;
                              } else {
                                return false;
                              }
                            }()
                                ? null
                                : () async {
                                    if (_model.formKey.currentState == null ||
                                        !_model.formKey.currentState!
                                            .validate()) {
                                      return;
                                    }
                                    if (_model.typeDropdownValue == null) {
                                      return;
                                    }
                                    if (_model.categoryDropdownValue == null) {
                                      return;
                                    }
                                    if (_model.datePicked == null) {
                                      return;
                                    }
                                    FFAppState().addToAllExpenses(ExpenseStruct(
                                      type: _model.typeDropdownValue,
                                      amount: double.tryParse(
                                          _model.textController1.text),
                                      description: _model.textController2.text,
                                      category: _model.categoryDropdownValue,
                                      date: _model.datePicked,
                                    ));
                                    safeSetState(() {});
                                    context.safePop();
                                  },
                            text: FFLocalizations.of(context).getText(
                              'e0vktzak' /* Add a new */,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
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
                              borderRadius: BorderRadius.circular(86.0),
                              disabledColor: const Color(0xFFD6D6D6),
                              disabledTextColor: Colors.black,
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
