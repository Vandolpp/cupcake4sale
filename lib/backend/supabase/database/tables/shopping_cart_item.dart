import '../database.dart';

class ShoppingCartItemTable extends SupabaseTable<ShoppingCartItemRow> {
  @override
  String get tableName => 'shopping_cart_item';

  @override
  ShoppingCartItemRow createRow(Map<String, dynamic> data) =>
      ShoppingCartItemRow(data);
}

class ShoppingCartItemRow extends SupabaseDataRow {
  ShoppingCartItemRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ShoppingCartItemTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get productId => getField<int>('product_id')!;
  set productId(int value) => setField<int>('product_id', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);

  int get shoppingCartId => getField<int>('shopping_cart_id')!;
  set shoppingCartId(int value) => setField<int>('shopping_cart_id', value);
}
