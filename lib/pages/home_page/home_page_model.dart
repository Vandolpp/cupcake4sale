import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  List<ProductsRow> products = [];
  void addToProducts(ProductsRow item) => products.add(item);
  void removeFromProducts(ProductsRow item) => products.remove(item);
  void removeAtIndexFromProducts(int index) => products.removeAt(index);
  void insertAtIndexInProducts(int index, ProductsRow item) =>
      products.insert(index, item);
  void updateProductsAtIndex(int index, Function(ProductsRow) updateFn) =>
      products[index] = updateFn(products[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in HomePage widget.
  List<ShoppingCartRow>? fetchShoppingCartIdOut;
  // Stores action output result for [Backend Call - Query Rows] action in HomePage widget.
  List<ProductsRow>? fetchProductsOut;
  // Stores action output result for [Backend Call - Query Rows] action in Container widget.
  List<ProductsRow>? filterProductsByCategoryOut;
  // Stores action output result for [Backend Call - Query Rows] action in Icon widget.
  List<ProductsRow>? fetchProductsForReloadOut;
  // Stores action output result for [Backend Call - Query Rows] action in IconButton widget.
  List<ShoppingCartItemProductRow>? fetchShoppingCartItemOut;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
