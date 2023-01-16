// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, public_member_api_docs
import 'package:isar/isar.dart';
part 'objmodel.g.dart';

@collection
class MassaTrx {
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.value, unique: true, replace: true)
  String trxid = "";
  @Index(type: IndexType.value)
  int timestamp = DateTime.now().millisecondsSinceEpoch;

  @enumerated
  Status status = Status.pending;
}

enum Status { pending, success, failed }
