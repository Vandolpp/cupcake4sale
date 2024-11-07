import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cart_page_widget.dart' show CartPageWidget;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CartPageModel extends FlutterFlowModel<CartPageWidget> {
  ///  Local state fields for this page.

  int shoppingCartItemsIndex = 0;

  ///  State fields for stateful widgets in this page.

  Completer<List<ShoppingCartItemProductRow>>? requestCompleter;
  // State field(s) for paymentForm widget.
  FormFieldController<List<String>>? paymentFormValueController;
  String? get paymentFormValue =>
      paymentFormValueController?.value?.firstOrNull;
  set paymentFormValue(String? val) =>
      paymentFormValueController?.value = val != null ? [val] : [];
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for numeroCartao widget.
  FocusNode? numeroCartaoFocusNode;
  TextEditingController? numeroCartaoTextController;
  final numeroCartaoMask = MaskTextInputFormatter(mask: '#### #### #### ####');
  String? Function(BuildContext, String?)? numeroCartaoTextControllerValidator;
  // State field(s) for dataValidadeCartao widget.
  FocusNode? dataValidadeCartaoFocusNode;
  TextEditingController? dataValidadeCartaoTextController;
  final dataValidadeCartaoMask = MaskTextInputFormatter(mask: '##/##');
  String? Function(BuildContext, String?)?
      dataValidadeCartaoTextControllerValidator;
  // State field(s) for cvvCartao widget.
  FocusNode? cvvCartaoFocusNode;
  TextEditingController? cvvCartaoTextController;
  String? Function(BuildContext, String?)? cvvCartaoTextControllerValidator;
  // State field(s) for shippingType widget.
  FormFieldController<List<String>>? shippingTypeValueController;
  String? get shippingTypeValue =>
      shippingTypeValueController?.value?.firstOrNull;
  set shippingTypeValue(String? val) =>
      shippingTypeValueController?.value = val != null ? [val] : [];
  // State field(s) for cep widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepTextController;
  final cepMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? cepTextControllerValidator;
  // Stores action output result for [Backend Call - API (Via CEP API)] action in cep widget.
  ApiCallResponse? fetchViaCepApiOut;
  // State field(s) for cidade widget.
  FocusNode? cidadeFocusNode;
  TextEditingController? cidadeTextController;
  String? Function(BuildContext, String?)? cidadeTextControllerValidator;
  // State field(s) for rua widget.
  FocusNode? ruaFocusNode;
  TextEditingController? ruaTextController;
  String? Function(BuildContext, String?)? ruaTextControllerValidator;
  // State field(s) for numero widget.
  FocusNode? numeroFocusNode;
  TextEditingController? numeroTextController;
  String? Function(BuildContext, String?)? numeroTextControllerValidator;
  // State field(s) for bairro widget.
  FocusNode? bairroFocusNode;
  TextEditingController? bairroTextController;
  String? Function(BuildContext, String?)? bairroTextControllerValidator;
  // State field(s) for complemento widget.
  FocusNode? complementoFocusNode;
  TextEditingController? complementoTextController;
  String? Function(BuildContext, String?)? complementoTextControllerValidator;
  // State field(s) for pontoDeRef widget.
  FocusNode? pontoDeRefFocusNode;
  TextEditingController? pontoDeRefTextController;
  String? Function(BuildContext, String?)? pontoDeRefTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ShoppingCartSummaryRow>? fetchCartSummaryForCheckoutOut;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  OrdersRow? insertOrderOut;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ShoppingCartItemProductRow>? fetchShoppingCartItemsForCheckoutOut;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    numeroCartaoFocusNode?.dispose();
    numeroCartaoTextController?.dispose();

    dataValidadeCartaoFocusNode?.dispose();
    dataValidadeCartaoTextController?.dispose();

    cvvCartaoFocusNode?.dispose();
    cvvCartaoTextController?.dispose();

    cepFocusNode?.dispose();
    cepTextController?.dispose();

    cidadeFocusNode?.dispose();
    cidadeTextController?.dispose();

    ruaFocusNode?.dispose();
    ruaTextController?.dispose();

    numeroFocusNode?.dispose();
    numeroTextController?.dispose();

    bairroFocusNode?.dispose();
    bairroTextController?.dispose();

    complementoFocusNode?.dispose();
    complementoTextController?.dispose();

    pontoDeRefFocusNode?.dispose();
    pontoDeRefTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
