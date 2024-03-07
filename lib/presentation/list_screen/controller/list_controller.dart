import '../../../core/app_export.dart';
import '../models/list_model.dart';

/// A controller class for the ListScreen.
///
/// This class manages the state of the ListScreen, including the
/// current listModelObj
class ListController extends GetxController {
  Rx<ListModel> listModelObj = ListModel().obs;
}
