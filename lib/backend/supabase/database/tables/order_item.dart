import '../database.dart';

class OrderItemTable extends SupabaseTable<OrderItemRow> {
  @override
  String get tableName => 'order_item';

  @override
  OrderItemRow createRow(Map<String, dynamic> data) => OrderItemRow(data);
}

class OrderItemRow extends SupabaseDataRow {
  OrderItemRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrderItemTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);

  int get productId => getField<int>('product_id')!;
  set productId(int value) => setField<int>('product_id', value);

  int get orderId => getField<int>('order_id')!;
  set orderId(int value) => setField<int>('order_id', value);
}
