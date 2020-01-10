import 'package:mobx/mobx.dart';
import 'package:printer_service_app/transaction.dart';

part 'main_store.g.dart';

enum VisibilityFilter { all, pending, completed }

class MainStore = _MainStore with _$MainStore;

abstract class _MainStore with Store {
  @observable
  ObservableList<Transaction> ledger = ObservableList<Transaction>();

  @observable
  VisibilityFilter filter = VisibilityFilter.all;
}
