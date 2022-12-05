// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carte_fidelite.dart';

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
abstract class CarteFideliteCollectionReference
    implements
        CarteFideliteQuery,
        FirestoreCollectionReference<CarteFidelite,
            CarteFideliteQuerySnapshot> {
  factory CarteFideliteCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$CarteFideliteCollectionReference;

  static CarteFidelite fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return CarteFidelite.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    CarteFidelite value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<CarteFidelite> get reference;

  @override
  CarteFideliteDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<CarteFideliteDocumentReference> add(CarteFidelite value);
}

class _$CarteFideliteCollectionReference extends _$CarteFideliteQuery
    implements CarteFideliteCollectionReference {
  factory _$CarteFideliteCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$CarteFideliteCollectionReference._(
      firestore.collection('cartefidelite').withConverter(
            fromFirestore: CarteFideliteCollectionReference.fromFirestore,
            toFirestore: CarteFideliteCollectionReference.toFirestore,
          ),
    );
  }

  _$CarteFideliteCollectionReference._(
    CollectionReference<CarteFidelite> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<CarteFidelite> get reference =>
      super.reference as CollectionReference<CarteFidelite>;

  @override
  CarteFideliteDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return CarteFideliteDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<CarteFideliteDocumentReference> add(CarteFidelite value) {
    return reference
        .add(value)
        .then((ref) => CarteFideliteDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$CarteFideliteCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class CarteFideliteDocumentReference
    extends FirestoreDocumentReference<CarteFidelite,
        CarteFideliteDocumentSnapshot> {
  factory CarteFideliteDocumentReference(
          DocumentReference<CarteFidelite> reference) =
      _$CarteFideliteDocumentReference;

  DocumentReference<CarteFidelite> get reference;

  /// A reference to the [CarteFideliteCollectionReference] containing this document.
  CarteFideliteCollectionReference get parent {
    return _$CarteFideliteCollectionReference(reference.firestore);
  }

  @override
  Stream<CarteFideliteDocumentSnapshot> snapshots();

  @override
  Future<CarteFideliteDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String uidCarteFidelite,
    FieldValue uidCarteFideliteFieldValue,
    String numeroCarte,
    FieldValue numeroCarteFieldValue,
    int pointsFidelite,
    FieldValue pointsFideliteFieldValue,
    String mobileUtilisateur,
    FieldValue mobileUtilisateurFieldValue,
    String mailUtilisateur,
    FieldValue mailUtilisateurFieldValue,
    String nomPrenomUtilisateur,
    FieldValue nomPrenomUtilisateurFieldValue,
    String uidUtilisateur,
    FieldValue uidUtilisateurFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String uidCarteFidelite,
    FieldValue uidCarteFideliteFieldValue,
    String numeroCarte,
    FieldValue numeroCarteFieldValue,
    int pointsFidelite,
    FieldValue pointsFideliteFieldValue,
    String mobileUtilisateur,
    FieldValue mobileUtilisateurFieldValue,
    String mailUtilisateur,
    FieldValue mailUtilisateurFieldValue,
    String nomPrenomUtilisateur,
    FieldValue nomPrenomUtilisateurFieldValue,
    String uidUtilisateur,
    FieldValue uidUtilisateurFieldValue,
  });
}

class _$CarteFideliteDocumentReference extends FirestoreDocumentReference<
    CarteFidelite,
    CarteFideliteDocumentSnapshot> implements CarteFideliteDocumentReference {
  _$CarteFideliteDocumentReference(this.reference);

  @override
  final DocumentReference<CarteFidelite> reference;

  /// A reference to the [CarteFideliteCollectionReference] containing this document.
  CarteFideliteCollectionReference get parent {
    return _$CarteFideliteCollectionReference(reference.firestore);
  }

  @override
  Stream<CarteFideliteDocumentSnapshot> snapshots() {
    return reference.snapshots().map(CarteFideliteDocumentSnapshot._);
  }

  @override
  Future<CarteFideliteDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(CarteFideliteDocumentSnapshot._);
  }

  @override
  Future<CarteFideliteDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(CarteFideliteDocumentSnapshot._);
  }

  Future<void> update({
    Object? uidCarteFidelite = _sentinel,
    FieldValue? uidCarteFideliteFieldValue,
    Object? numeroCarte = _sentinel,
    FieldValue? numeroCarteFieldValue,
    Object? pointsFidelite = _sentinel,
    FieldValue? pointsFideliteFieldValue,
    Object? mobileUtilisateur = _sentinel,
    FieldValue? mobileUtilisateurFieldValue,
    Object? mailUtilisateur = _sentinel,
    FieldValue? mailUtilisateurFieldValue,
    Object? nomPrenomUtilisateur = _sentinel,
    FieldValue? nomPrenomUtilisateurFieldValue,
    Object? uidUtilisateur = _sentinel,
    FieldValue? uidUtilisateurFieldValue,
  }) async {
    assert(
      uidCarteFidelite == _sentinel || uidCarteFideliteFieldValue == null,
      "Cannot specify both uidCarteFidelite and uidCarteFideliteFieldValue",
    );
    assert(
      numeroCarte == _sentinel || numeroCarteFieldValue == null,
      "Cannot specify both numeroCarte and numeroCarteFieldValue",
    );
    assert(
      pointsFidelite == _sentinel || pointsFideliteFieldValue == null,
      "Cannot specify both pointsFidelite and pointsFideliteFieldValue",
    );
    assert(
      mobileUtilisateur == _sentinel || mobileUtilisateurFieldValue == null,
      "Cannot specify both mobileUtilisateur and mobileUtilisateurFieldValue",
    );
    assert(
      mailUtilisateur == _sentinel || mailUtilisateurFieldValue == null,
      "Cannot specify both mailUtilisateur and mailUtilisateurFieldValue",
    );
    assert(
      nomPrenomUtilisateur == _sentinel ||
          nomPrenomUtilisateurFieldValue == null,
      "Cannot specify both nomPrenomUtilisateur and nomPrenomUtilisateurFieldValue",
    );
    assert(
      uidUtilisateur == _sentinel || uidUtilisateurFieldValue == null,
      "Cannot specify both uidUtilisateur and uidUtilisateurFieldValue",
    );
    final json = {
      if (uidCarteFidelite != _sentinel)
        _$CarteFideliteFieldMap['uidCarteFidelite']!:
            uidCarteFidelite as String,
      if (uidCarteFideliteFieldValue != null)
        _$CarteFideliteFieldMap['uidCarteFidelite']!:
            uidCarteFideliteFieldValue,
      if (numeroCarte != _sentinel)
        _$CarteFideliteFieldMap['numeroCarte']!: numeroCarte as String,
      if (numeroCarteFieldValue != null)
        _$CarteFideliteFieldMap['numeroCarte']!: numeroCarteFieldValue,
      if (pointsFidelite != _sentinel)
        _$CarteFideliteFieldMap['pointsFidelite']!: pointsFidelite as int,
      if (pointsFideliteFieldValue != null)
        _$CarteFideliteFieldMap['pointsFidelite']!: pointsFideliteFieldValue,
      if (mobileUtilisateur != _sentinel)
        _$CarteFideliteFieldMap['mobileUtilisateur']!:
            mobileUtilisateur as String,
      if (mobileUtilisateurFieldValue != null)
        _$CarteFideliteFieldMap['mobileUtilisateur']!:
            mobileUtilisateurFieldValue,
      if (mailUtilisateur != _sentinel)
        _$CarteFideliteFieldMap['mailUtilisateur']!: mailUtilisateur as String,
      if (mailUtilisateurFieldValue != null)
        _$CarteFideliteFieldMap['mailUtilisateur']!: mailUtilisateurFieldValue,
      if (nomPrenomUtilisateur != _sentinel)
        _$CarteFideliteFieldMap['nomPrenomUtilisateur']!:
            nomPrenomUtilisateur as String,
      if (nomPrenomUtilisateurFieldValue != null)
        _$CarteFideliteFieldMap['nomPrenomUtilisateur']!:
            nomPrenomUtilisateurFieldValue,
      if (uidUtilisateur != _sentinel)
        _$CarteFideliteFieldMap['uidUtilisateur']!: uidUtilisateur as String,
      if (uidUtilisateurFieldValue != null)
        _$CarteFideliteFieldMap['uidUtilisateur']!: uidUtilisateurFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? uidCarteFidelite = _sentinel,
    FieldValue? uidCarteFideliteFieldValue,
    Object? numeroCarte = _sentinel,
    FieldValue? numeroCarteFieldValue,
    Object? pointsFidelite = _sentinel,
    FieldValue? pointsFideliteFieldValue,
    Object? mobileUtilisateur = _sentinel,
    FieldValue? mobileUtilisateurFieldValue,
    Object? mailUtilisateur = _sentinel,
    FieldValue? mailUtilisateurFieldValue,
    Object? nomPrenomUtilisateur = _sentinel,
    FieldValue? nomPrenomUtilisateurFieldValue,
    Object? uidUtilisateur = _sentinel,
    FieldValue? uidUtilisateurFieldValue,
  }) {
    assert(
      uidCarteFidelite == _sentinel || uidCarteFideliteFieldValue == null,
      "Cannot specify both uidCarteFidelite and uidCarteFideliteFieldValue",
    );
    assert(
      numeroCarte == _sentinel || numeroCarteFieldValue == null,
      "Cannot specify both numeroCarte and numeroCarteFieldValue",
    );
    assert(
      pointsFidelite == _sentinel || pointsFideliteFieldValue == null,
      "Cannot specify both pointsFidelite and pointsFideliteFieldValue",
    );
    assert(
      mobileUtilisateur == _sentinel || mobileUtilisateurFieldValue == null,
      "Cannot specify both mobileUtilisateur and mobileUtilisateurFieldValue",
    );
    assert(
      mailUtilisateur == _sentinel || mailUtilisateurFieldValue == null,
      "Cannot specify both mailUtilisateur and mailUtilisateurFieldValue",
    );
    assert(
      nomPrenomUtilisateur == _sentinel ||
          nomPrenomUtilisateurFieldValue == null,
      "Cannot specify both nomPrenomUtilisateur and nomPrenomUtilisateurFieldValue",
    );
    assert(
      uidUtilisateur == _sentinel || uidUtilisateurFieldValue == null,
      "Cannot specify both uidUtilisateur and uidUtilisateurFieldValue",
    );
    final json = {
      if (uidCarteFidelite != _sentinel)
        _$CarteFideliteFieldMap['uidCarteFidelite']!:
            uidCarteFidelite as String,
      if (uidCarteFideliteFieldValue != null)
        _$CarteFideliteFieldMap['uidCarteFidelite']!:
            uidCarteFideliteFieldValue,
      if (numeroCarte != _sentinel)
        _$CarteFideliteFieldMap['numeroCarte']!: numeroCarte as String,
      if (numeroCarteFieldValue != null)
        _$CarteFideliteFieldMap['numeroCarte']!: numeroCarteFieldValue,
      if (pointsFidelite != _sentinel)
        _$CarteFideliteFieldMap['pointsFidelite']!: pointsFidelite as int,
      if (pointsFideliteFieldValue != null)
        _$CarteFideliteFieldMap['pointsFidelite']!: pointsFideliteFieldValue,
      if (mobileUtilisateur != _sentinel)
        _$CarteFideliteFieldMap['mobileUtilisateur']!:
            mobileUtilisateur as String,
      if (mobileUtilisateurFieldValue != null)
        _$CarteFideliteFieldMap['mobileUtilisateur']!:
            mobileUtilisateurFieldValue,
      if (mailUtilisateur != _sentinel)
        _$CarteFideliteFieldMap['mailUtilisateur']!: mailUtilisateur as String,
      if (mailUtilisateurFieldValue != null)
        _$CarteFideliteFieldMap['mailUtilisateur']!: mailUtilisateurFieldValue,
      if (nomPrenomUtilisateur != _sentinel)
        _$CarteFideliteFieldMap['nomPrenomUtilisateur']!:
            nomPrenomUtilisateur as String,
      if (nomPrenomUtilisateurFieldValue != null)
        _$CarteFideliteFieldMap['nomPrenomUtilisateur']!:
            nomPrenomUtilisateurFieldValue,
      if (uidUtilisateur != _sentinel)
        _$CarteFideliteFieldMap['uidUtilisateur']!: uidUtilisateur as String,
      if (uidUtilisateurFieldValue != null)
        _$CarteFideliteFieldMap['uidUtilisateur']!: uidUtilisateurFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is CarteFideliteDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class CarteFideliteQuery
    implements QueryReference<CarteFidelite, CarteFideliteQuerySnapshot> {
  @override
  CarteFideliteQuery limit(int limit);

  @override
  CarteFideliteQuery limitToLast(int limit);

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
  CarteFideliteQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    CarteFideliteDocumentSnapshot? startAtDocument,
    CarteFideliteDocumentSnapshot? endAtDocument,
    CarteFideliteDocumentSnapshot? endBeforeDocument,
    CarteFideliteDocumentSnapshot? startAfterDocument,
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
  CarteFideliteQuery whereFieldPath(
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

  CarteFideliteQuery whereDocumentId({
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
  CarteFideliteQuery whereUidCarteFidelite({
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
  CarteFideliteQuery whereNumeroCarte({
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
  CarteFideliteQuery wherePointsFidelite({
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
  CarteFideliteQuery whereMobileUtilisateur({
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
  CarteFideliteQuery whereMailUtilisateur({
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
  CarteFideliteQuery whereNomPrenomUtilisateur({
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
  CarteFideliteQuery whereUidUtilisateur({
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

  CarteFideliteQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CarteFideliteDocumentSnapshot? startAtDocument,
    CarteFideliteDocumentSnapshot? endAtDocument,
    CarteFideliteDocumentSnapshot? endBeforeDocument,
    CarteFideliteDocumentSnapshot? startAfterDocument,
  });

  CarteFideliteQuery orderByUidCarteFidelite({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CarteFideliteDocumentSnapshot? startAtDocument,
    CarteFideliteDocumentSnapshot? endAtDocument,
    CarteFideliteDocumentSnapshot? endBeforeDocument,
    CarteFideliteDocumentSnapshot? startAfterDocument,
  });

  CarteFideliteQuery orderByNumeroCarte({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CarteFideliteDocumentSnapshot? startAtDocument,
    CarteFideliteDocumentSnapshot? endAtDocument,
    CarteFideliteDocumentSnapshot? endBeforeDocument,
    CarteFideliteDocumentSnapshot? startAfterDocument,
  });

  CarteFideliteQuery orderByPointsFidelite({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    CarteFideliteDocumentSnapshot? startAtDocument,
    CarteFideliteDocumentSnapshot? endAtDocument,
    CarteFideliteDocumentSnapshot? endBeforeDocument,
    CarteFideliteDocumentSnapshot? startAfterDocument,
  });

  CarteFideliteQuery orderByMobileUtilisateur({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CarteFideliteDocumentSnapshot? startAtDocument,
    CarteFideliteDocumentSnapshot? endAtDocument,
    CarteFideliteDocumentSnapshot? endBeforeDocument,
    CarteFideliteDocumentSnapshot? startAfterDocument,
  });

  CarteFideliteQuery orderByMailUtilisateur({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CarteFideliteDocumentSnapshot? startAtDocument,
    CarteFideliteDocumentSnapshot? endAtDocument,
    CarteFideliteDocumentSnapshot? endBeforeDocument,
    CarteFideliteDocumentSnapshot? startAfterDocument,
  });

  CarteFideliteQuery orderByNomPrenomUtilisateur({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CarteFideliteDocumentSnapshot? startAtDocument,
    CarteFideliteDocumentSnapshot? endAtDocument,
    CarteFideliteDocumentSnapshot? endBeforeDocument,
    CarteFideliteDocumentSnapshot? startAfterDocument,
  });

  CarteFideliteQuery orderByUidUtilisateur({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CarteFideliteDocumentSnapshot? startAtDocument,
    CarteFideliteDocumentSnapshot? endAtDocument,
    CarteFideliteDocumentSnapshot? endBeforeDocument,
    CarteFideliteDocumentSnapshot? startAfterDocument,
  });
}

class _$CarteFideliteQuery
    extends QueryReference<CarteFidelite, CarteFideliteQuerySnapshot>
    implements CarteFideliteQuery {
  _$CarteFideliteQuery(
    this._collection, {
    required Query<CarteFidelite> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<CarteFideliteQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(CarteFideliteQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<CarteFideliteQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(CarteFideliteQuerySnapshot._fromQuerySnapshot);
  }

  @override
  CarteFideliteQuery limit(int limit) {
    return _$CarteFideliteQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CarteFideliteQuery limitToLast(int limit) {
    return _$CarteFideliteQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  CarteFideliteQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CarteFideliteDocumentSnapshot? startAtDocument,
    CarteFideliteDocumentSnapshot? endAtDocument,
    CarteFideliteDocumentSnapshot? endBeforeDocument,
    CarteFideliteDocumentSnapshot? startAfterDocument,
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
    return _$CarteFideliteQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  CarteFideliteQuery whereFieldPath(
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
    return _$CarteFideliteQuery(
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

  CarteFideliteQuery whereDocumentId({
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
    return _$CarteFideliteQuery(
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

  CarteFideliteQuery whereUidCarteFidelite({
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
    return _$CarteFideliteQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$CarteFideliteFieldMap['uidCarteFidelite']!,
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

  CarteFideliteQuery whereNumeroCarte({
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
    return _$CarteFideliteQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$CarteFideliteFieldMap['numeroCarte']!,
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

  CarteFideliteQuery wherePointsFidelite({
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
    return _$CarteFideliteQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$CarteFideliteFieldMap['pointsFidelite']!,
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

  CarteFideliteQuery whereMobileUtilisateur({
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
    return _$CarteFideliteQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$CarteFideliteFieldMap['mobileUtilisateur']!,
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

  CarteFideliteQuery whereMailUtilisateur({
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
    return _$CarteFideliteQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$CarteFideliteFieldMap['mailUtilisateur']!,
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

  CarteFideliteQuery whereNomPrenomUtilisateur({
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
    return _$CarteFideliteQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$CarteFideliteFieldMap['nomPrenomUtilisateur']!,
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

  CarteFideliteQuery whereUidUtilisateur({
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
    return _$CarteFideliteQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$CarteFideliteFieldMap['uidUtilisateur']!,
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

  CarteFideliteQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CarteFideliteDocumentSnapshot? startAtDocument,
    CarteFideliteDocumentSnapshot? endAtDocument,
    CarteFideliteDocumentSnapshot? endBeforeDocument,
    CarteFideliteDocumentSnapshot? startAfterDocument,
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

    return _$CarteFideliteQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  CarteFideliteQuery orderByUidCarteFidelite({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CarteFideliteDocumentSnapshot? startAtDocument,
    CarteFideliteDocumentSnapshot? endAtDocument,
    CarteFideliteDocumentSnapshot? endBeforeDocument,
    CarteFideliteDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$CarteFideliteFieldMap['uidCarteFidelite']!,
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

    return _$CarteFideliteQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  CarteFideliteQuery orderByNumeroCarte({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CarteFideliteDocumentSnapshot? startAtDocument,
    CarteFideliteDocumentSnapshot? endAtDocument,
    CarteFideliteDocumentSnapshot? endBeforeDocument,
    CarteFideliteDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$CarteFideliteFieldMap['numeroCarte']!,
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

    return _$CarteFideliteQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  CarteFideliteQuery orderByPointsFidelite({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CarteFideliteDocumentSnapshot? startAtDocument,
    CarteFideliteDocumentSnapshot? endAtDocument,
    CarteFideliteDocumentSnapshot? endBeforeDocument,
    CarteFideliteDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$CarteFideliteFieldMap['pointsFidelite']!,
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

    return _$CarteFideliteQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  CarteFideliteQuery orderByMobileUtilisateur({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CarteFideliteDocumentSnapshot? startAtDocument,
    CarteFideliteDocumentSnapshot? endAtDocument,
    CarteFideliteDocumentSnapshot? endBeforeDocument,
    CarteFideliteDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$CarteFideliteFieldMap['mobileUtilisateur']!,
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

    return _$CarteFideliteQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  CarteFideliteQuery orderByMailUtilisateur({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CarteFideliteDocumentSnapshot? startAtDocument,
    CarteFideliteDocumentSnapshot? endAtDocument,
    CarteFideliteDocumentSnapshot? endBeforeDocument,
    CarteFideliteDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$CarteFideliteFieldMap['mailUtilisateur']!,
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

    return _$CarteFideliteQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  CarteFideliteQuery orderByNomPrenomUtilisateur({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CarteFideliteDocumentSnapshot? startAtDocument,
    CarteFideliteDocumentSnapshot? endAtDocument,
    CarteFideliteDocumentSnapshot? endBeforeDocument,
    CarteFideliteDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$CarteFideliteFieldMap['nomPrenomUtilisateur']!,
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

    return _$CarteFideliteQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  CarteFideliteQuery orderByUidUtilisateur({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CarteFideliteDocumentSnapshot? startAtDocument,
    CarteFideliteDocumentSnapshot? endAtDocument,
    CarteFideliteDocumentSnapshot? endBeforeDocument,
    CarteFideliteDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$CarteFideliteFieldMap['uidUtilisateur']!,
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

    return _$CarteFideliteQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$CarteFideliteQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class CarteFideliteDocumentSnapshot
    extends FirestoreDocumentSnapshot<CarteFidelite> {
  CarteFideliteDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<CarteFidelite> snapshot;

  @override
  CarteFideliteDocumentReference get reference {
    return CarteFideliteDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final CarteFidelite? data;
}

class CarteFideliteQuerySnapshot extends FirestoreQuerySnapshot<CarteFidelite,
    CarteFideliteQueryDocumentSnapshot> {
  CarteFideliteQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory CarteFideliteQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<CarteFidelite> snapshot,
  ) {
    final docs =
        snapshot.docs.map(CarteFideliteQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        CarteFideliteDocumentSnapshot._,
      );
    }).toList();

    return CarteFideliteQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<CarteFideliteDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    CarteFideliteDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<CarteFideliteDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<CarteFidelite> snapshot;

  @override
  final List<CarteFideliteQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<CarteFideliteDocumentSnapshot>> docChanges;
}

class CarteFideliteQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<CarteFidelite>
    implements CarteFideliteDocumentSnapshot {
  CarteFideliteQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<CarteFidelite> snapshot;

  @override
  final CarteFidelite data;

  @override
  CarteFideliteDocumentReference get reference {
    return CarteFideliteDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarteFidelite _$CarteFideliteFromJson(Map<String, dynamic> json) =>
    CarteFidelite(
      uidCarteFidelite: json['uidCarteFidelite'] as String,
      numeroCarte: json['numeroCarte'] as String,
      pointsFidelite: json['pointsFidelite'] as int,
      mobileUtilisateur: json['mobileUtilisateur'] as String,
      mailUtilisateur: json['mailUtilisateur'] as String,
      nomPrenomUtilisateur: json['nomPrenomUtilisateur'] as String,
      uidUtilisateur: json['uidUtilisateur'] as String,
    );

const _$CarteFideliteFieldMap = <String, String>{
  'uidCarteFidelite': 'uidCarteFidelite',
  'numeroCarte': 'numeroCarte',
  'pointsFidelite': 'pointsFidelite',
  'mobileUtilisateur': 'mobileUtilisateur',
  'mailUtilisateur': 'mailUtilisateur',
  'nomPrenomUtilisateur': 'nomPrenomUtilisateur',
  'uidUtilisateur': 'uidUtilisateur',
};

Map<String, dynamic> _$CarteFideliteToJson(CarteFidelite instance) =>
    <String, dynamic>{
      'uidCarteFidelite': instance.uidCarteFidelite,
      'numeroCarte': instance.numeroCarte,
      'pointsFidelite': instance.pointsFidelite,
      'mobileUtilisateur': instance.mobileUtilisateur,
      'mailUtilisateur': instance.mailUtilisateur,
      'nomPrenomUtilisateur': instance.nomPrenomUtilisateur,
      'uidUtilisateur': instance.uidUtilisateur,
    };
