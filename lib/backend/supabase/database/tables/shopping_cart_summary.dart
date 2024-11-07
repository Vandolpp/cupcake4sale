import '../database.dart';

class ShoppingCartSummaryTable extends SupabaseTable<ShoppingCartSummaryRow> {
  @override
  String get tableName => 'shopping_cart_summary';

  @override
  ShoppingCartSummaryRow createRow(Map<String, dynamic> data) =>
      ShoppingCartSummaryRow(data);
}

class ShoppingCartSummaryRow extends SupabaseDataRow {
  ShoppingCartSummaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ShoppingCartSummaryTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get customerId => getField<String>('customer_id');
  set customerId(String? value) => setField<String>('customer_id', value);

  double? get sum => getField<double>('sum');
  set sum(double? value) => setField<double>('sum', value);
}
