// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExpenseStruct extends BaseStruct {
  ExpenseStruct({
    String? type,
    double? amount,
    String? description,
    String? category,
    DateTime? date,
  })  : _type = type,
        _amount = amount,
        _description = description,
        _category = category,
        _date = date;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;

  bool hasDate() => _date != null;

  static ExpenseStruct fromMap(Map<String, dynamic> data) => ExpenseStruct(
        type: data['type'] as String?,
        amount: castToType<double>(data['amount']),
        description: data['description'] as String?,
        category: data['category'] as String?,
        date: data['date'] as DateTime?,
      );

  static ExpenseStruct? maybeFromMap(dynamic data) =>
      data is Map ? ExpenseStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'type': _type,
        'amount': _amount,
        'description': _description,
        'category': _category,
        'date': _date,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static ExpenseStruct fromSerializableMap(Map<String, dynamic> data) =>
      ExpenseStruct(
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'ExpenseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExpenseStruct &&
        type == other.type &&
        amount == other.amount &&
        description == other.description &&
        category == other.category &&
        date == other.date;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([type, amount, description, category, date]);
}

ExpenseStruct createExpenseStruct({
  String? type,
  double? amount,
  String? description,
  String? category,
  DateTime? date,
}) =>
    ExpenseStruct(
      type: type,
      amount: amount,
      description: description,
      category: category,
      date: date,
    );
