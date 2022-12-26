// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utilisateur.dart';

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
abstract class UtilisateurCollectionReference
    implements
        UtilisateurQuery,
        FirestoreCollectionReference<Utilisateur, UtilisateurQuerySnapshot> {
  factory UtilisateurCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$UtilisateurCollectionReference;

  static Utilisateur fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Utilisateur.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Utilisateur value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  CollectionReference<Utilisateur> get reference;

  @override
  UtilisateurDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<UtilisateurDocumentReference> add(Utilisateur value);
}

class _$UtilisateurCollectionReference extends _$UtilisateurQuery
    implements UtilisateurCollectionReference {
  factory _$UtilisateurCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$UtilisateurCollectionReference._(
      firestore.collection('utilisateur').withConverter(
            fromFirestore: UtilisateurCollectionReference.fromFirestore,
            toFirestore: UtilisateurCollectionReference.toFirestore,
          ),
    );
  }

  _$UtilisateurCollectionReference._(
    CollectionReference<Utilisateur> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Utilisateur> get reference =>
      super.reference as CollectionReference<Utilisateur>;

  @override
  UtilisateurDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return UtilisateurDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<UtilisateurDocumentReference> add(Utilisateur value) {
    return reference
        .add(value)
        .then((ref) => UtilisateurDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$UtilisateurCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class UtilisateurDocumentReference extends FirestoreDocumentReference<
    Utilisateur, UtilisateurDocumentSnapshot> {
  factory UtilisateurDocumentReference(
          DocumentReference<Utilisateur> reference) =
      _$UtilisateurDocumentReference;

  DocumentReference<Utilisateur> get reference;

  /// A reference to the [UtilisateurCollectionReference] containing this document.
  UtilisateurCollectionReference get parent {
    return _$UtilisateurCollectionReference(reference.firestore);
  }

  @override
  Stream<UtilisateurDocumentSnapshot> snapshots();

  @override
  Future<UtilisateurDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String? uidUtilisateur,
    FieldValue uidUtilisateurFieldValue,
    String nom,
    FieldValue nomFieldValue,
    String mobile,
    FieldValue mobileFieldValue,
    String mail,
    FieldValue mailFieldValue,
    String prenom,
    FieldValue prenomFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String? uidUtilisateur,
    FieldValue uidUtilisateurFieldValue,
    String nom,
    FieldValue nomFieldValue,
    String mobile,
    FieldValue mobileFieldValue,
    String mail,
    FieldValue mailFieldValue,
    String prenom,
    FieldValue prenomFieldValue,
  });
}

class _$UtilisateurDocumentReference
    extends FirestoreDocumentReference<Utilisateur, UtilisateurDocumentSnapshot>
    implements UtilisateurDocumentReference {
  _$UtilisateurDocumentReference(this.reference);

  @override
  final DocumentReference<Utilisateur> reference;

  /// A reference to the [UtilisateurCollectionReference] containing this document.
  UtilisateurCollectionReference get parent {
    return _$UtilisateurCollectionReference(reference.firestore);
  }

  @override
  Stream<UtilisateurDocumentSnapshot> snapshots() {
    return reference.snapshots().map(UtilisateurDocumentSnapshot._);
  }

  @override
  Future<UtilisateurDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(UtilisateurDocumentSnapshot._);
  }

  @override
  Future<UtilisateurDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(UtilisateurDocumentSnapshot._);
  }

  Future<void> update({
    Object? uidUtilisateur = _sentinel,
    FieldValue? uidUtilisateurFieldValue,
    Object? nom = _sentinel,
    FieldValue? nomFieldValue,
    Object? mobile = _sentinel,
    FieldValue? mobileFieldValue,
    Object? mail = _sentinel,
    FieldValue? mailFieldValue,
    Object? prenom = _sentinel,
    FieldValue? prenomFieldValue,
  }) async {
    assert(
      uidUtilisateur == _sentinel || uidUtilisateurFieldValue == null,
      "Cannot specify both uidUtilisateur and uidUtilisateurFieldValue",
    );
    assert(
      nom == _sentinel || nomFieldValue == null,
      "Cannot specify both nom and nomFieldValue",
    );
    assert(
      mobile == _sentinel || mobileFieldValue == null,
      "Cannot specify both mobile and mobileFieldValue",
    );
    assert(
      mail == _sentinel || mailFieldValue == null,
      "Cannot specify both mail and mailFieldValue",
    );
    assert(
      prenom == _sentinel || prenomFieldValue == null,
      "Cannot specify both prenom and prenomFieldValue",
    );
    final json = {
      if (uidUtilisateur != _sentinel)
        _$UtilisateurFieldMap['uidUtilisateur']!: uidUtilisateur as String?,
      if (uidUtilisateurFieldValue != null)
        _$UtilisateurFieldMap['uidUtilisateur']!: uidUtilisateurFieldValue,
      if (nom != _sentinel) _$UtilisateurFieldMap['nom']!: nom as String,
      if (nomFieldValue != null) _$UtilisateurFieldMap['nom']!: nomFieldValue,
      if (mobile != _sentinel)
        _$UtilisateurFieldMap['mobile']!: mobile as String,
      if (mobileFieldValue != null)
        _$UtilisateurFieldMap['mobile']!: mobileFieldValue,
      if (mail != _sentinel) _$UtilisateurFieldMap['mail']!: mail as String,
      if (mailFieldValue != null)
        _$UtilisateurFieldMap['mail']!: mailFieldValue,
      if (prenom != _sentinel)
        _$UtilisateurFieldMap['prenom']!: prenom as String,
      if (prenomFieldValue != null)
        _$UtilisateurFieldMap['prenom']!: prenomFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? uidUtilisateur = _sentinel,
    FieldValue? uidUtilisateurFieldValue,
    Object? nom = _sentinel,
    FieldValue? nomFieldValue,
    Object? mobile = _sentinel,
    FieldValue? mobileFieldValue,
    Object? mail = _sentinel,
    FieldValue? mailFieldValue,
    Object? prenom = _sentinel,
    FieldValue? prenomFieldValue,
  }) {
    assert(
      uidUtilisateur == _sentinel || uidUtilisateurFieldValue == null,
      "Cannot specify both uidUtilisateur and uidUtilisateurFieldValue",
    );
    assert(
      nom == _sentinel || nomFieldValue == null,
      "Cannot specify both nom and nomFieldValue",
    );
    assert(
      mobile == _sentinel || mobileFieldValue == null,
      "Cannot specify both mobile and mobileFieldValue",
    );
    assert(
      mail == _sentinel || mailFieldValue == null,
      "Cannot specify both mail and mailFieldValue",
    );
    assert(
      prenom == _sentinel || prenomFieldValue == null,
      "Cannot specify both prenom and prenomFieldValue",
    );
    final json = {
      if (uidUtilisateur != _sentinel)
        _$UtilisateurFieldMap['uidUtilisateur']!: uidUtilisateur as String?,
      if (uidUtilisateurFieldValue != null)
        _$UtilisateurFieldMap['uidUtilisateur']!: uidUtilisateurFieldValue,
      if (nom != _sentinel) _$UtilisateurFieldMap['nom']!: nom as String,
      if (nomFieldValue != null) _$UtilisateurFieldMap['nom']!: nomFieldValue,
      if (mobile != _sentinel)
        _$UtilisateurFieldMap['mobile']!: mobile as String,
      if (mobileFieldValue != null)
        _$UtilisateurFieldMap['mobile']!: mobileFieldValue,
      if (mail != _sentinel) _$UtilisateurFieldMap['mail']!: mail as String,
      if (mailFieldValue != null)
        _$UtilisateurFieldMap['mail']!: mailFieldValue,
      if (prenom != _sentinel)
        _$UtilisateurFieldMap['prenom']!: prenom as String,
      if (prenomFieldValue != null)
        _$UtilisateurFieldMap['prenom']!: prenomFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is UtilisateurDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class UtilisateurQuery
    implements QueryReference<Utilisateur, UtilisateurQuerySnapshot> {
  @override
  UtilisateurQuery limit(int limit);

  @override
  UtilisateurQuery limitToLast(int limit);

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
  UtilisateurQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    UtilisateurDocumentSnapshot? startAtDocument,
    UtilisateurDocumentSnapshot? endAtDocument,
    UtilisateurDocumentSnapshot? endBeforeDocument,
    UtilisateurDocumentSnapshot? startAfterDocument,
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
  UtilisateurQuery whereFieldPath(
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

  UtilisateurQuery whereDocumentId({
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
  UtilisateurQuery whereUidUtilisateur({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  UtilisateurQuery whereNom({
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
  UtilisateurQuery whereMobile({
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
  UtilisateurQuery whereMail({
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
  UtilisateurQuery wherePrenom({
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

  UtilisateurQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UtilisateurDocumentSnapshot? startAtDocument,
    UtilisateurDocumentSnapshot? endAtDocument,
    UtilisateurDocumentSnapshot? endBeforeDocument,
    UtilisateurDocumentSnapshot? startAfterDocument,
  });

  UtilisateurQuery orderByUidUtilisateur({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    UtilisateurDocumentSnapshot? startAtDocument,
    UtilisateurDocumentSnapshot? endAtDocument,
    UtilisateurDocumentSnapshot? endBeforeDocument,
    UtilisateurDocumentSnapshot? startAfterDocument,
  });

  UtilisateurQuery orderByNom({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UtilisateurDocumentSnapshot? startAtDocument,
    UtilisateurDocumentSnapshot? endAtDocument,
    UtilisateurDocumentSnapshot? endBeforeDocument,
    UtilisateurDocumentSnapshot? startAfterDocument,
  });

  UtilisateurQuery orderByMobile({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UtilisateurDocumentSnapshot? startAtDocument,
    UtilisateurDocumentSnapshot? endAtDocument,
    UtilisateurDocumentSnapshot? endBeforeDocument,
    UtilisateurDocumentSnapshot? startAfterDocument,
  });

  UtilisateurQuery orderByMail({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UtilisateurDocumentSnapshot? startAtDocument,
    UtilisateurDocumentSnapshot? endAtDocument,
    UtilisateurDocumentSnapshot? endBeforeDocument,
    UtilisateurDocumentSnapshot? startAfterDocument,
  });

  UtilisateurQuery orderByPrenom({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UtilisateurDocumentSnapshot? startAtDocument,
    UtilisateurDocumentSnapshot? endAtDocument,
    UtilisateurDocumentSnapshot? endBeforeDocument,
    UtilisateurDocumentSnapshot? startAfterDocument,
  });
}

class _$UtilisateurQuery
    extends QueryReference<Utilisateur, UtilisateurQuerySnapshot>
    implements UtilisateurQuery {
  _$UtilisateurQuery(
    this._collection, {
    required Query<Utilisateur> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<UtilisateurQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(UtilisateurQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<UtilisateurQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(UtilisateurQuerySnapshot._fromQuerySnapshot);
  }

  @override
  UtilisateurQuery limit(int limit) {
    return _$UtilisateurQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UtilisateurQuery limitToLast(int limit) {
    return _$UtilisateurQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  UtilisateurQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UtilisateurDocumentSnapshot? startAtDocument,
    UtilisateurDocumentSnapshot? endAtDocument,
    UtilisateurDocumentSnapshot? endBeforeDocument,
    UtilisateurDocumentSnapshot? startAfterDocument,
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
    return _$UtilisateurQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  UtilisateurQuery whereFieldPath(
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
    return _$UtilisateurQuery(
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

  UtilisateurQuery whereDocumentId({
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
    return _$UtilisateurQuery(
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

  UtilisateurQuery whereUidUtilisateur({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$UtilisateurQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UtilisateurFieldMap['uidUtilisateur']!,
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

  UtilisateurQuery whereNom({
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
    return _$UtilisateurQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UtilisateurFieldMap['nom']!,
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

  UtilisateurQuery whereMobile({
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
    return _$UtilisateurQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UtilisateurFieldMap['mobile']!,
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

  UtilisateurQuery whereMail({
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
    return _$UtilisateurQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UtilisateurFieldMap['mail']!,
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

  UtilisateurQuery wherePrenom({
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
    return _$UtilisateurQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UtilisateurFieldMap['prenom']!,
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

  UtilisateurQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UtilisateurDocumentSnapshot? startAtDocument,
    UtilisateurDocumentSnapshot? endAtDocument,
    UtilisateurDocumentSnapshot? endBeforeDocument,
    UtilisateurDocumentSnapshot? startAfterDocument,
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

    return _$UtilisateurQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  UtilisateurQuery orderByUidUtilisateur({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UtilisateurDocumentSnapshot? startAtDocument,
    UtilisateurDocumentSnapshot? endAtDocument,
    UtilisateurDocumentSnapshot? endBeforeDocument,
    UtilisateurDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$UtilisateurFieldMap['uidUtilisateur']!,
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

    return _$UtilisateurQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  UtilisateurQuery orderByNom({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UtilisateurDocumentSnapshot? startAtDocument,
    UtilisateurDocumentSnapshot? endAtDocument,
    UtilisateurDocumentSnapshot? endBeforeDocument,
    UtilisateurDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UtilisateurFieldMap['nom']!,
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

    return _$UtilisateurQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  UtilisateurQuery orderByMobile({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UtilisateurDocumentSnapshot? startAtDocument,
    UtilisateurDocumentSnapshot? endAtDocument,
    UtilisateurDocumentSnapshot? endBeforeDocument,
    UtilisateurDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$UtilisateurFieldMap['mobile']!, descending: descending);
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

    return _$UtilisateurQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  UtilisateurQuery orderByMail({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UtilisateurDocumentSnapshot? startAtDocument,
    UtilisateurDocumentSnapshot? endAtDocument,
    UtilisateurDocumentSnapshot? endBeforeDocument,
    UtilisateurDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$UtilisateurFieldMap['mail']!, descending: descending);
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

    return _$UtilisateurQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  UtilisateurQuery orderByPrenom({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UtilisateurDocumentSnapshot? startAtDocument,
    UtilisateurDocumentSnapshot? endAtDocument,
    UtilisateurDocumentSnapshot? endBeforeDocument,
    UtilisateurDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$UtilisateurFieldMap['prenom']!, descending: descending);
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

    return _$UtilisateurQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$UtilisateurQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class UtilisateurDocumentSnapshot
    extends FirestoreDocumentSnapshot<Utilisateur> {
  UtilisateurDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Utilisateur> snapshot;

  @override
  UtilisateurDocumentReference get reference {
    return UtilisateurDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Utilisateur? data;
}

class UtilisateurQuerySnapshot extends FirestoreQuerySnapshot<Utilisateur,
    UtilisateurQueryDocumentSnapshot> {
  UtilisateurQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory UtilisateurQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Utilisateur> snapshot,
  ) {
    final docs = snapshot.docs.map(UtilisateurQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        UtilisateurDocumentSnapshot._,
      );
    }).toList();

    return UtilisateurQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<UtilisateurDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    UtilisateurDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<UtilisateurDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Utilisateur> snapshot;

  @override
  final List<UtilisateurQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<UtilisateurDocumentSnapshot>> docChanges;
}

class UtilisateurQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<Utilisateur>
    implements UtilisateurDocumentSnapshot {
  UtilisateurQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Utilisateur> snapshot;

  @override
  final Utilisateur data;

  @override
  UtilisateurDocumentReference get reference {
    return UtilisateurDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Utilisateur _$UtilisateurFromJson(Map<String, dynamic> json) => Utilisateur(
      uidUtilisateur: json['uidUtilisateur'] as String?,
      nom: json['nom'] as String,
      role: $enumDecode(_$RoleEnumMap, json['role']),
      mobile: json['mobile'] as String,
      mail: json['mail'] as String,
      prenom: json['prenom'] as String,
    );

const _$UtilisateurFieldMap = <String, String>{
  'uidUtilisateur': 'uidUtilisateur',
  'nom': 'nom',
  'role': 'role',
  'mobile': 'mobile',
  'mail': 'mail',
  'prenom': 'prenom',
};

Map<String, dynamic> _$UtilisateurToJson(Utilisateur instance) =>
    <String, dynamic>{
      'uidUtilisateur': instance.uidUtilisateur,
      'nom': instance.nom,
      'role': _$RoleEnumMap[instance.role]!,
      'mobile': instance.mobile,
      'mail': instance.mail,
      'prenom': instance.prenom,
    };

const _$RoleEnumMap = {
  Role.caissier: 'caissier',
  Role.client: 'client',
};
