import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'forumn_chat_page_widget.dart' show ForumnChatPageWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ForumnChatPageModel extends FlutterFlowModel<ForumnChatPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, ForumnsChatRecord>?
      listViewPagingController;
  Query? listViewPagingQuery;

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for sendingTextField widget.
  FocusNode? sendingTextFieldFocusNode;
  TextEditingController? sendingTextFieldTextController;
  String? Function(BuildContext, String?)?
      sendingTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in sendingTextField widget.
  ForumnsChatRecord? sentMessageA;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  ForumnsChatRecord? sentMessageB;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    listViewPagingController?.dispose();

    sendingTextFieldFocusNode?.dispose();
    sendingTextFieldTextController?.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, ForumnsChatRecord> setListViewController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController ??= _createListViewController(query, parent);
    if (listViewPagingQuery != query) {
      listViewPagingQuery = query;
      listViewPagingController?.refresh();
    }
    return listViewPagingController!;
  }

  PagingController<DocumentSnapshot?, ForumnsChatRecord>
      _createListViewController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller = PagingController<DocumentSnapshot?, ForumnsChatRecord>(
        firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryForumnsChatRecordPage(
          queryBuilder: (_) => listViewPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          controller: controller,
          pageSize: 20,
          isStream: false,
        ),
      );
  }
}
