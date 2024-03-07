import '../../../core/app_export.dart';
import '../models/playlist_model.dart';

/// A controller class for the PlaylistBottomsheet.
///
/// This class manages the state of the PlaylistBottomsheet, including the
/// current playlistModelObj
class PlaylistController extends GetxController {
  Rx<PlaylistModel> playlistModelObj = PlaylistModel().obs;
}
