// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'objmodel.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetMassaTrxCollection on Isar {
  IsarCollection<MassaTrx> get massaTrxs => this.collection();
}

const MassaTrxSchema = CollectionSchema(
  name: r'MassaTrx',
  id: 4377220796909006235,
  properties: {
    r'status': PropertySchema(
      id: 0,
      name: r'status',
      type: IsarType.byte,
      enumMap: _MassaTrxstatusEnumValueMap,
    ),
    r'timestamp': PropertySchema(
      id: 1,
      name: r'timestamp',
      type: IsarType.long,
    ),
    r'trxid': PropertySchema(
      id: 2,
      name: r'trxid',
      type: IsarType.string,
    )
  },
  estimateSize: _massaTrxEstimateSize,
  serialize: _massaTrxSerialize,
  deserialize: _massaTrxDeserialize,
  deserializeProp: _massaTrxDeserializeProp,
  idName: r'id',
  indexes: {
    r'trxid': IndexSchema(
      id: 7045239650074047640,
      name: r'trxid',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'trxid',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'timestamp': IndexSchema(
      id: 1852253767416892198,
      name: r'timestamp',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'timestamp',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _massaTrxGetId,
  getLinks: _massaTrxGetLinks,
  attach: _massaTrxAttach,
  version: '3.0.5',
);

int _massaTrxEstimateSize(
  MassaTrx object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.trxid.length * 3;
  return bytesCount;
}

void _massaTrxSerialize(
  MassaTrx object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeByte(offsets[0], object.status.index);
  writer.writeLong(offsets[1], object.timestamp);
  writer.writeString(offsets[2], object.trxid);
}

MassaTrx _massaTrxDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MassaTrx();
  object.id = id;
  object.status =
      _MassaTrxstatusValueEnumMap[reader.readByteOrNull(offsets[0])] ??
          Status.pending;
  object.timestamp = reader.readLong(offsets[1]);
  object.trxid = reader.readString(offsets[2]);
  return object;
}

P _massaTrxDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_MassaTrxstatusValueEnumMap[reader.readByteOrNull(offset)] ??
          Status.pending) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _MassaTrxstatusEnumValueMap = {
  'pending': 0,
  'success': 1,
  'failed': 2,
};
const _MassaTrxstatusValueEnumMap = {
  0: Status.pending,
  1: Status.success,
  2: Status.failed,
};

Id _massaTrxGetId(MassaTrx object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _massaTrxGetLinks(MassaTrx object) {
  return [];
}

void _massaTrxAttach(IsarCollection<dynamic> col, Id id, MassaTrx object) {
  object.id = id;
}

extension MassaTrxByIndex on IsarCollection<MassaTrx> {
  Future<MassaTrx?> getByTrxid(String trxid) {
    return getByIndex(r'trxid', [trxid]);
  }

  MassaTrx? getByTrxidSync(String trxid) {
    return getByIndexSync(r'trxid', [trxid]);
  }

  Future<bool> deleteByTrxid(String trxid) {
    return deleteByIndex(r'trxid', [trxid]);
  }

  bool deleteByTrxidSync(String trxid) {
    return deleteByIndexSync(r'trxid', [trxid]);
  }

  Future<List<MassaTrx?>> getAllByTrxid(List<String> trxidValues) {
    final values = trxidValues.map((e) => [e]).toList();
    return getAllByIndex(r'trxid', values);
  }

  List<MassaTrx?> getAllByTrxidSync(List<String> trxidValues) {
    final values = trxidValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'trxid', values);
  }

  Future<int> deleteAllByTrxid(List<String> trxidValues) {
    final values = trxidValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'trxid', values);
  }

  int deleteAllByTrxidSync(List<String> trxidValues) {
    final values = trxidValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'trxid', values);
  }

  Future<Id> putByTrxid(MassaTrx object) {
    return putByIndex(r'trxid', object);
  }

  Id putByTrxidSync(MassaTrx object, {bool saveLinks = true}) {
    return putByIndexSync(r'trxid', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByTrxid(List<MassaTrx> objects) {
    return putAllByIndex(r'trxid', objects);
  }

  List<Id> putAllByTrxidSync(List<MassaTrx> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'trxid', objects, saveLinks: saveLinks);
  }
}

extension MassaTrxQueryWhereSort on QueryBuilder<MassaTrx, MassaTrx, QWhere> {
  QueryBuilder<MassaTrx, MassaTrx, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterWhere> anyTrxid() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'trxid'),
      );
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterWhere> anyTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'timestamp'),
      );
    });
  }
}

extension MassaTrxQueryWhere on QueryBuilder<MassaTrx, MassaTrx, QWhereClause> {
  QueryBuilder<MassaTrx, MassaTrx, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterWhereClause> trxidEqualTo(
      String trxid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'trxid',
        value: [trxid],
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterWhereClause> trxidNotEqualTo(
      String trxid) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'trxid',
              lower: [],
              upper: [trxid],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'trxid',
              lower: [trxid],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'trxid',
              lower: [trxid],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'trxid',
              lower: [],
              upper: [trxid],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterWhereClause> trxidGreaterThan(
    String trxid, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'trxid',
        lower: [trxid],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterWhereClause> trxidLessThan(
    String trxid, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'trxid',
        lower: [],
        upper: [trxid],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterWhereClause> trxidBetween(
    String lowerTrxid,
    String upperTrxid, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'trxid',
        lower: [lowerTrxid],
        includeLower: includeLower,
        upper: [upperTrxid],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterWhereClause> trxidStartsWith(
      String TrxidPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'trxid',
        lower: [TrxidPrefix],
        upper: ['$TrxidPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterWhereClause> trxidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'trxid',
        value: [''],
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterWhereClause> trxidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'trxid',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'trxid',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'trxid',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'trxid',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterWhereClause> timestampEqualTo(
      int timestamp) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'timestamp',
        value: [timestamp],
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterWhereClause> timestampNotEqualTo(
      int timestamp) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'timestamp',
              lower: [],
              upper: [timestamp],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'timestamp',
              lower: [timestamp],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'timestamp',
              lower: [timestamp],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'timestamp',
              lower: [],
              upper: [timestamp],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterWhereClause> timestampGreaterThan(
    int timestamp, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'timestamp',
        lower: [timestamp],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterWhereClause> timestampLessThan(
    int timestamp, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'timestamp',
        lower: [],
        upper: [timestamp],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterWhereClause> timestampBetween(
    int lowerTimestamp,
    int upperTimestamp, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'timestamp',
        lower: [lowerTimestamp],
        includeLower: includeLower,
        upper: [upperTimestamp],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MassaTrxQueryFilter
    on QueryBuilder<MassaTrx, MassaTrx, QFilterCondition> {
  QueryBuilder<MassaTrx, MassaTrx, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterFilterCondition> statusEqualTo(
      Status value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterFilterCondition> statusGreaterThan(
    Status value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterFilterCondition> statusLessThan(
    Status value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterFilterCondition> statusBetween(
    Status lower,
    Status upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterFilterCondition> timestampEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterFilterCondition> timestampGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterFilterCondition> timestampLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterFilterCondition> timestampBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timestamp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterFilterCondition> trxidEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'trxid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterFilterCondition> trxidGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'trxid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterFilterCondition> trxidLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'trxid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterFilterCondition> trxidBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'trxid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterFilterCondition> trxidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'trxid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterFilterCondition> trxidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'trxid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterFilterCondition> trxidContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'trxid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterFilterCondition> trxidMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'trxid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterFilterCondition> trxidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'trxid',
        value: '',
      ));
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterFilterCondition> trxidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'trxid',
        value: '',
      ));
    });
  }
}

extension MassaTrxQueryObject
    on QueryBuilder<MassaTrx, MassaTrx, QFilterCondition> {}

extension MassaTrxQueryLinks
    on QueryBuilder<MassaTrx, MassaTrx, QFilterCondition> {}

extension MassaTrxQuerySortBy on QueryBuilder<MassaTrx, MassaTrx, QSortBy> {
  QueryBuilder<MassaTrx, MassaTrx, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterSortBy> sortByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.asc);
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterSortBy> sortByTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.desc);
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterSortBy> sortByTrxid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trxid', Sort.asc);
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterSortBy> sortByTrxidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trxid', Sort.desc);
    });
  }
}

extension MassaTrxQuerySortThenBy
    on QueryBuilder<MassaTrx, MassaTrx, QSortThenBy> {
  QueryBuilder<MassaTrx, MassaTrx, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterSortBy> thenByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.asc);
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterSortBy> thenByTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.desc);
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterSortBy> thenByTrxid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trxid', Sort.asc);
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QAfterSortBy> thenByTrxidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trxid', Sort.desc);
    });
  }
}

extension MassaTrxQueryWhereDistinct
    on QueryBuilder<MassaTrx, MassaTrx, QDistinct> {
  QueryBuilder<MassaTrx, MassaTrx, QDistinct> distinctByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status');
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QDistinct> distinctByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timestamp');
    });
  }

  QueryBuilder<MassaTrx, MassaTrx, QDistinct> distinctByTrxid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'trxid', caseSensitive: caseSensitive);
    });
  }
}

extension MassaTrxQueryProperty
    on QueryBuilder<MassaTrx, MassaTrx, QQueryProperty> {
  QueryBuilder<MassaTrx, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MassaTrx, Status, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<MassaTrx, int, QQueryOperations> timestampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timestamp');
    });
  }

  QueryBuilder<MassaTrx, String, QQueryOperations> trxidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'trxid');
    });
  }
}
