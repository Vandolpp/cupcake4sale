import '../database.dart';

class OrdersTable extends SupabaseTable<OrdersRow> {
  @override
  String get tableName => 'orders';

  @override
  OrdersRow createRow(Map<String, dynamic> data) => OrdersRow(data);
}

class OrdersRow extends SupabaseDataRow {
  OrdersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrdersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get shippingAddress => getField<String>('shipping_address');
  set shippingAddress(String? value) =>
      setField<String>('shipping_address', value);

  String? get paymentForm => getField<String>('payment_form');
  set paymentForm(String? value) => setField<String>('payment_form', value);

  double? get change => getField<double>('change');
  set change(double? value) => setField<double>('change', value);

  bool get isPickup => getField<bool>('is_pickup')!;
  set isPickup(bool value) => setField<bool>('is_pickup', value);

  double get totalPrice => getField<double>('total_price')!;
  set totalPrice(double value) => setField<double>('total_price', value);

  String get customerId => getField<String>('customer_id')!;
  set customerId(String value) => setField<String>('customer_id', value);

  String? get cardNumber => getField<String>('card_number');
  set cardNumber(String? value) => setField<String>('card_number', value);

  String? get cardExpiration => getField<String>('card_expiration');
  set cardExpiration(String? value) =>
      setField<String>('card_expiration', value);

  int? get cardToken => getField<int>('card_token');
  set cardToken(int? value) => setField<int>('card_token', value);
}
