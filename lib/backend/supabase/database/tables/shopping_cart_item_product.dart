import '../database.dart';

class ShoppingCartItemProductTable
    extends SupabaseTable<ShoppingCartItemProductRow> {
  @override
  String get tableName => 'shopping_cart_item_product';

  @override
  ShoppingCartItemProductRow createRow(Map<String, dynamic> data) =>
      ShoppingCartItemProductRow(data);
}

class ShoppingCartItemProductRow extends SupabaseDataRow {
  ShoppingCartItemProductRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ShoppingCartItemProductTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get productId => getField<int>('product_id');
  set productId(int? value) => setField<int>('product_id', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  int? get shoppingCartId => getField<int>('shopping_cart_id');
  set shoppingCartId(int? value) => setField<int>('shopping_cart_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  double? get unityPrice => getField<double>('unity_price');
  set unityPrice(double? value) => setField<double>('unity_price', value);

  double? get total => getField<double>('total');
  set total(double? value) => setField<double>('total', value);
}
