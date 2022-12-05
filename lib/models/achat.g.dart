// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achat.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class AchatCollectionReference
    implements
        AchatQuery,
        FirestoreCollectionReference<Achat, AchatQuerySnapshot> {
  factory AchatCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$AchatCollectionReference;

  static Achat fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Achat.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Achat value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<Achat> get reference;

  @override
  AchatDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<AchatDocumentReference> add(Achat value);
}

class _$AchatCollectionReference extends _$AchatQuery
    implements AchatCollectionReference {
  factory _$AchatCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$AchatCollectionReference._(
      firestore.collection('achat').withConverter(
            fromFirestore: AchatCollectionReference.fromFirestore,
            toFirestore: AchatCollectionReference.toFirestore,
          ),
    );
  }

  _$AchatCollectionReference._(
    CollectionReference<Achat> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Achat> get reference =>
      super.reference as CollectionReference<Achat>;

  @override
  AchatDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return AchatDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<AchatDocumentReference> add(Achat value) {
    return reference.add(value).then((ref) => AchatDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$AchatCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class AchatDocumentReference
    extends FirestoreDocumentReference<Achat, AchatDocumentSnapshot> {
  factory AchatDocumentReference(DocumentReference<Achat> reference) =
      _$AchatDocumentReference;

  DocumentReference<Achat> get reference;

  /// A reference to the [AchatCollectionReference] containing this document.
  AchatCollectionReference get parent {
    return _$AchatCollectionReference(reference.firestore);
  }

  @override
  Stream<AchatDocumentSnapshot> snapshots();

  @override
  Future<AchatDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String uidAchat,
    FieldValue uidAchatFieldValue,
    double montantInitial,
    FieldValue montantInitialFieldValue,
    double montantFinal,
    FieldValue montantFinalFieldValue,
    String uidUtilisateur,
    FieldValue uidUtilisateurFieldValue,
    int nombrePointsPerdu,
    FieldValue nombrePointsPerduFieldValue,
    int nombrePointsGagne,
    FieldValue nombrePointsGagneFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String uidAchat,
    FieldValue uidAchatFieldValue,
    double montantInitial,
    FieldValue montantInitialFieldValue,
    double montantFinal,
    FieldValue montantFinalFieldValue,
    String uidUtilisateur,
    FieldValue uidUtilisateurFieldValue,
    int nombrePointsPerdu,
    FieldValue nombrePointsPerduFieldValue,
    int nombrePointsGagne,
    FieldValue nombrePointsGagneFieldValue,
  });
}

class _$AchatDocumentReference
    extends FirestoreDocumentReference<Achat, AchatDocumentSnapshot>
    implements AchatDocumentReference {
  _$AchatDocumentReference(this.reference);

  @override
  final DocumentReference<Achat> reference;

  /// A reference to the [AchatCollectionReference] containing this document.
  AchatCollectionReference get parent {
    return _$AchatCollectionReference(reference.firestore);
  }

  @override
  Stream<AchatDocumentSnapshot> snapshots() {
    return reference.snapshots().map(AchatDocumentSnapshot._);
  }

  @override
  Future<AchatDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(AchatDocumentSnapshot._);
  }

  @override
  Future<AchatDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(AchatDocumentSnapshot._);
  }

  Future<void> update({
    Object? uidAchat = _sentinel,
    FieldValue? uidAchatFieldValue,
    Object? montantInitial = _sentinel,
    FieldValue? montantInitialFieldValue,
    Object? montantFinal = _sentinel,
    FieldValue? montantFinalFieldValue,
    Object? uidUtilisateur = _sentinel,
    FieldValue? uidUtilisateurFieldValue,
    Object? nombrePointsPerdu = _sentinel,
    FieldValue? nombrePointsPerduFieldValue,
    Object? nombrePointsGagne = _sentinel,
    FieldValue? nombrePointsGagneFieldValue,
  }) async {
    assert(
      uidAchat == _sentinel || uidAchatFieldValue == null,
      "Cannot specify both uidAchat and uidAchatFieldValue",
    );
    assert(
      montantInitial == _sentinel || montantInitialFieldValue == null,
      "Cannot specify both montantInitial and montantInitialFieldValue",
    );
    assert(
      montantFinal == _sentinel || montantFinalFieldValue == null,
      "Cannot specify both montantFinal and montantFinalFieldValue",
    );
    assert(
      uidUtilisateur == _sentinel || uidUtilisateurFieldValue == null,
      "Cannot specify both uidUtilisateur and uidUtilisateurFieldValue",
    );
    assert(
      nombrePointsPerdu == _sentinel || nombrePointsPerduFieldValue == null,
      "Cannot specify both nombrePointsPerdu and nombrePointsPerduFieldValue",
    );
    assert(
      nombrePointsGagne == _sentinel || nombrePointsGagneFieldValue == null,
      "Cannot specify both nombrePointsGagne and nombrePointsGagneFieldValue",
    );
    final json = {
      if (uidAchat != _sentinel)
        _$AchatFieldMap['uidAchat']!: uidAchat as String,
      if (uidAchatFieldValue != null)
        _$AchatFieldMap['uidAchat']!: uidAchatFieldValue,
      if (montantInitial != _sentinel)
        _$AchatFieldMap['montantInitial']!: montantInitial as double,
      if (montantInitialFieldValue != null)
        _$AchatFieldMap['montantInitial']!: montantInitialFieldValue,
      if (montantFinal != _sentinel)
        _$AchatFieldMap['montantFinal']!: montantFinal as double,
      if (montantFinalFieldValue != null)
        _$AchatFieldMap['montantFinal']!: montantFinalFieldValue,
      if (uidUtilisateur != _sentinel)
        _$AchatFieldMap['uidUtilisateur']!: uidUtilisateur as String,
      if (uidUtilisateurFieldValue != null)
        _$AchatFieldMap['uidUtilisateur']!: uidUtilisateurFieldValue,
      if (nombrePointsPerdu != _sentinel)
        _$AchatFieldMap['nombrePointsPerdu']!: nombrePointsPerdu as int,
      if (nombrePointsPerduFieldValue != null)
        _$AchatFieldMap['nombrePointsPerdu']!: nombrePointsPerduFieldValue,
      if (nombrePointsGagne != _sentinel)
        _$AchatFieldMap['nombrePointsGagne']!: nombrePointsGagne as int,
      if (nombrePointsGagneFieldValue != null)
        _$AchatFieldMap['nombrePointsGagne']!: nombrePointsGagneFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? uidAchat = _sentinel,
    FieldValue? uidAchatFieldValue,
    Object? montantInitial = _sentinel,
    FieldValue? montantInitialFieldValue,
    Object? montantFinal = _sentinel,
    FieldValue? montantFinalFieldValue,
    Object? uidUtilisateur = _sentinel,
    FieldValue? uidUtilisateurFieldValue,
    Object? nombrePointsPerdu = _sentinel,
    FieldValue? nombrePointsPerduFieldValue,
    Object? nombrePointsGagne = _sentinel,
    FieldValue? nombrePointsGagneFieldValue,
  }) {
    assert(
      uidAchat == _sentinel || uidAchatFieldValue == null,
      "Cannot specify both uidAchat and uidAchatFieldValue",
    );
    assert(
      montantInitial == _sentinel || montantInitialFieldValue == null,
      "Cannot specify both montantInitial and montantInitialFieldValue",
    );
    assert(
      montantFinal == _sentinel || montantFinalFieldValue == null,
      "Cannot specify both montantFinal and montantFinalFieldValue",
    );
    assert(
      uidUtilisateur == _sentinel || uidUtilisateurFieldValue == null,
      "Cannot specify both uidUtilisateur and uidUtilisateurFieldValue",
    );
    assert(
      nombrePointsPerdu == _sentinel || nombrePointsPerduFieldValue == null,
      "Cannot specify both nombrePointsPerdu and nombrePointsPerduFieldValue",
    );
    assert(
      nombrePointsGagne == _sentinel || nombrePointsGagneFieldValue == null,
      "Cannot specify both nombrePointsGagne and nombrePointsGagneFieldValue",
    );
    final json = {
      if (uidAchat != _sentinel)
        _$AchatFieldMap['uidAchat']!: uidAchat as String,
      if (uidAchatFieldValue != null)
        _$AchatFieldMap['uidAchat']!: uidAchatFieldValue,
      if (montantInitial != _sentinel)
        _$AchatFieldMap['montantInitial']!: montantInitial as double,
      if (montantInitialFieldValue != null)
        _$AchatFieldMap['montantInitial']!: montantInitialFieldValue,
      if (montantFinal != _sentinel)
        _$AchatFieldMap['montantFinal']!: montantFinal as double,
      if (montantFinalFieldValue != null)
        _$AchatFieldMap['montantFinal']!: montantFinalFieldValue,
      if (uidUtilisateur != _sentinel)
        _$AchatFieldMap['uidUtilisateur']!: uidUtilisateur as String,
      if (uidUtilisateurFieldValue != null)
        _$AchatFieldMap['uidUtilisateur']!: uidUtilisateurFieldValue,
      if (nombrePointsPerdu != _sentinel)
        _$AchatFieldMap['nombrePointsPerdu']!: nombrePointsPerdu as int,
      if (nombrePointsPerduFieldValue != null)
        _$AchatFieldMap['nombrePointsPerdu']!: nombrePointsPerduFieldValue,
      if (nombrePointsGagne != _sentinel)
        _$AchatFieldMap['nombrePointsGagne']!: nombrePointsGagne as int,
      if (nombrePointsGagneFieldValue != null)
        _$AchatFieldMap['nombrePointsGagne']!: nombrePointsGagneFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is AchatDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class AchatQuery implements QueryReference<Achat, AchatQuerySnapshot> {
  @override
  AchatQuery limit(int limit);

  @override
  AchatQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  AchatQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    AchatDocumentSnapshot? startAtDocument,
    AchatDocumentSnapshot? endAtDocument,
    AchatDocumentSnapshot? endBeforeDocument,
    AchatDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  AchatQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  AchatQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  AchatQuery whereUidAchat({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  AchatQuery whereMontantInitial({
    double? isEqualTo,
    double? isNotEqualTo,
    double? isLessThan,
    double? isLessThanOrEqualTo,
    double? isGreaterThan,
    double? isGreaterThanOrEqualTo,
    bool? isNull,
    List<double>? whereIn,
    List<double>? whereNotIn,
  });
  AchatQuery whereMontantFinal({
    double? isEqualTo,
    double? isNotEqualTo,
    double? isLessThan,
    double? isLessThanOrEqualTo,
    double? isGreaterThan,
    double? isGreaterThanOrEqualTo,
    bool? isNull,
    List<double>? whereIn,
    List<double>? whereNotIn,
  });
  AchatQuery whereUidUtilisateur({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  AchatQuery whereNombrePointsPerdu({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  });
  AchatQuery whereNombrePointsGagne({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  });

  AchatQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    AchatDocumentSnapshot? startAtDocument,
    AchatDocumentSnapshot? endAtDocument,
    AchatDocumentSnapshot? endBeforeDocument,
    AchatDocumentSnapshot? startAfterDocument,
  });

  AchatQuery orderByUidAchat({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    AchatDocumentSnapshot? startAtDocument,
    AchatDocumentSnapshot? endAtDocument,
    AchatDocumentSnapshot? endBeforeDocument,
    AchatDocumentSnapshot? startAfterDocument,
  });

  AchatQuery orderByMontantInitial({
    bool descending = false,
    double startAt,
    double startAfter,
    double endAt,
    double endBefore,
    AchatDocumentSnapshot? startAtDocument,
    AchatDocumentSnapshot? endAtDocument,
    AchatDocumentSnapshot? endBeforeDocument,
    AchatDocumentSnapshot? startAfterDocument,
  });

  AchatQuery orderByMontantFinal({
    bool descending = false,
    double startAt,
    double startAfter,
    double endAt,
    double endBefore,
    AchatDocumentSnapshot? startAtDocument,
    AchatDocumentSnapshot? endAtDocument,
    AchatDocumentSnapshot? endBeforeDocument,
    AchatDocumentSnapshot? startAfterDocument,
  });

  AchatQuery orderByUidUtilisateur({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    AchatDocumentSnapshot? startAtDocument,
    AchatDocumentSnapshot? endAtDocument,
    AchatDocumentSnapshot? endBeforeDocument,
    AchatDocumentSnapshot? startAfterDocument,
  });

  AchatQuery orderByNombrePointsPerdu({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    AchatDocumentSnapshot? startAtDocument,
    AchatDocumentSnapshot? endAtDocument,
    AchatDocumentSnapshot? endBeforeDocument,
    AchatDocumentSnapshot? startAfterDocument,
  });

  AchatQuery orderByNombrePointsGagne({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    AchatDocumentSnapshot? startAtDocument,
    AchatDocumentSnapshot? endAtDocument,
    AchatDocumentSnapshot? endBeforeDocument,
    AchatDocumentSnapshot? startAfterDocument,
  });
}

class _$AchatQuery extends QueryReference<Achat, AchatQuerySnapshot>
    implements AchatQuery {
  _$AchatQuery(
    this._collection, {
    required Query<Achat> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<AchatQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(AchatQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<AchatQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(AchatQuerySnapshot._fromQuerySnapshot);
  }

  @override
  AchatQuery limit(int limit) {
    return _$AchatQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AchatQuery limitToLast(int limit) {
    return _$AchatQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  AchatQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AchatDocumentSnapshot? startAtDocument,
    AchatDocumentSnapshot? endAtDocument,
    AchatDocumentSnapshot? endBeforeDocument,
    AchatDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$AchatQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  AchatQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$AchatQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  AchatQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$AchatQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  AchatQuery whereUidAchat({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$AchatQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AchatFieldMap['uidAchat']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  AchatQuery whereMontantInitial({
    double? isEqualTo,
    double? isNotEqualTo,
    double? isLessThan,
    double? isLessThanOrEqualTo,
    double? isGreaterThan,
    double? isGreaterThanOrEqualTo,
    bool? isNull,
    List<double>? whereIn,
    List<double>? whereNotIn,
  }) {
    return _$AchatQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AchatFieldMap['montantInitial']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  AchatQuery whereMontantFinal({
    double? isEqualTo,
    double? isNotEqualTo,
    double? isLessThan,
    double? isLessThanOrEqualTo,
    double? isGreaterThan,
    double? isGreaterThanOrEqualTo,
    bool? isNull,
    List<double>? whereIn,
    List<double>? whereNotIn,
  }) {
    return _$AchatQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AchatFieldMap['montantFinal']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  AchatQuery whereUidUtilisateur({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$AchatQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AchatFieldMap['uidUtilisateur']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  AchatQuery whereNombrePointsPerdu({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  }) {
    return _$AchatQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AchatFieldMap['nombrePointsPerdu']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  AchatQuery whereNombrePointsGagne({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  }) {
    return _$AchatQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AchatFieldMap['nombrePointsGagne']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  AchatQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AchatDocumentSnapshot? startAtDocument,
    AchatDocumentSnapshot? endAtDocument,
    AchatDocumentSnapshot? endBeforeDocument,
    AchatDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AchatQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  AchatQuery orderByUidAchat({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AchatDocumentSnapshot? startAtDocument,
    AchatDocumentSnapshot? endAtDocument,
    AchatDocumentSnapshot? endBeforeDocument,
    AchatDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$AchatFieldMap['uidAchat']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AchatQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  AchatQuery orderByMontantInitial({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AchatDocumentSnapshot? startAtDocument,
    AchatDocumentSnapshot? endAtDocument,
    AchatDocumentSnapshot? endBeforeDocument,
    AchatDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AchatFieldMap['montantInitial']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AchatQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  AchatQuery orderByMontantFinal({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AchatDocumentSnapshot? startAtDocument,
    AchatDocumentSnapshot? endAtDocument,
    AchatDocumentSnapshot? endBeforeDocument,
    AchatDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AchatFieldMap['montantFinal']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AchatQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  AchatQuery orderByUidUtilisateur({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AchatDocumentSnapshot? startAtDocument,
    AchatDocumentSnapshot? endAtDocument,
    AchatDocumentSnapshot? endBeforeDocument,
    AchatDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AchatFieldMap['uidUtilisateur']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AchatQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  AchatQuery orderByNombrePointsPerdu({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AchatDocumentSnapshot? startAtDocument,
    AchatDocumentSnapshot? endAtDocument,
    AchatDocumentSnapshot? endBeforeDocument,
    AchatDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AchatFieldMap['nombrePointsPerdu']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AchatQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  AchatQuery orderByNombrePointsGagne({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AchatDocumentSnapshot? startAtDocument,
    AchatDocumentSnapshot? endAtDocument,
    AchatDocumentSnapshot? endBeforeDocument,
    AchatDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AchatFieldMap['nombrePointsGagne']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$AchatQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$AchatQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class AchatDocumentSnapshot extends FirestoreDocumentSnapshot<Achat> {
  AchatDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Achat> snapshot;

  @override
  AchatDocumentReference get reference {
    return AchatDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Achat? data;
}

class AchatQuerySnapshot
    extends FirestoreQuerySnapshot<Achat, AchatQueryDocumentSnapshot> {
  AchatQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory AchatQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Achat> snapshot,
  ) {
    final docs = snapshot.docs.map(AchatQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        AchatDocumentSnapshot._,
      );
    }).toList();

    return AchatQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<AchatDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    AchatDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<AchatDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Achat> snapshot;

  @override
  final List<AchatQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<AchatDocumentSnapshot>> docChanges;
}

class AchatQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<Achat>
    implements AchatDocumentSnapshot {
  AchatQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Achat> snapshot;

  @override
  final Achat data;

  @override
  AchatDocumentReference get reference {
    return AchatDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Achat _$AchatFromJson(Map<String, dynamic> json) => Achat(
      uidAchat: json['uidAchat'] as String,
      montantInitial: (json['montantInitial'] as num).toDouble(),
      montantFinal: (json['montantFinal'] as num).toDouble(),
      uidUtilisateur: json['uidUtilisateur'] as String,
      magasin: $enumDecode(_$MagasinEnumMap, json['magasin']),
      nombrePointsPerdu: json['nombrePointsPerdu'] as int,
      nombrePointsGagne: json['nombrePointsGagne'] as int,
    );

const _$AchatFieldMap = <String, String>{
  'uidAchat': 'uidAchat',
  'montantInitial': 'montantInitial',
  'montantFinal': 'montantFinal',
  'uidUtilisateur': 'uidUtilisateur',
  'magasin': 'magasin',
  'nombrePointsPerdu': 'nombrePointsPerdu',
  'nombrePointsGagne': 'nombrePointsGagne',
};

Map<String, dynamic> _$AchatToJson(Achat instance) => <String, dynamic>{
      'uidAchat': instance.uidAchat,
      'montantInitial': instance.montantInitial,
      'montantFinal': instance.montantFinal,
      'uidUtilisateur': instance.uidUtilisateur,
      'magasin': _$MagasinEnumMap[instance.magasin]!,
      'nombrePointsPerdu': instance.nombrePointsPerdu,
      'nombrePointsGagne': instance.nombrePointsGagne,
    };

const _$MagasinEnumMap = {
  Magasin.stella: 'stella',
  Magasin.tampon: 'tampon',
};
