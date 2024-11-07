import '../database.dart';

class ShoppingCartTable extends SupabaseTable<ShoppingCartRow> {
  @override
  String get tableName => 'shopping_cart';

  @override
  ShoppingCartRow createRow(Map<String, dynamic> data) => ShoppingCartRow(data);
}

class ShoppingCartRow extends SupabaseDataRow {
  ShoppingCartRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ShoppingCartTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get customerId => getField<String>('customer_id')!;
  set customerId(String value) => setField<String>('customer_id', value);
}
