// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainStore on _MainStore, Store {
  final _$ledgerAtom = Atom(name: '_MainStore.ledger');

  @override
  ObservableList<Transaction> get ledger {
    _$ledgerAtom.context.enforceReadPolicy(_$ledgerAtom);
    _$ledgerAtom.reportObserved();
    return super.ledger;
  }

  @override
  set ledger(ObservableList<Transaction> value) {
    _$ledgerAtom.context.conditionallyRunInAction(() {
      super.ledger = value;
      _$ledgerAtom.reportChanged();
    }, _$ledgerAtom, name: '${_$ledgerAtom.name}_set');
  }

  final _$filterAtom = Atom(name: '_MainStore.filter');

  @override
  VisibilityFilter get filter {
    _$filterAtom.context.enforceReadPolicy(_$filterAtom);
    _$filterAtom.reportObserved();
    return super.filter;
  }

  @override
  set filter(VisibilityFilter value) {
    _$filterAtom.context.conditionallyRunInAction(() {
      super.filter = value;
      _$filterAtom.reportChanged();
    }, _$filterAtom, name: '${_$filterAtom.name}_set');
  }
}
