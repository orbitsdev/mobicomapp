import '../../../core/app_export.dart';
import 'options_item_model.dart';

/// This class defines the variables used in the [song_menu_full_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class SongMenuFullModel {
  Rx<List<OptionsItemModel>> optionsItemList = Rx([
    OptionsItemModel(
        addtoPlaylist: ImageConstant.imgClose.obs,
        addToPlaylist1: "Add to Playlist".obs),
    OptionsItemModel(
        addtoPlaylist: ImageConstant.imgLock.obs, addToPlaylist1: "Artist".obs),
    OptionsItemModel(
        addtoPlaylist: ImageConstant.imgIcons.obs, addToPlaylist1: "Album".obs),
    OptionsItemModel(
        addtoPlaylist: ImageConstant.imgTelevision.obs,
        addToPlaylist1: "I don’t like it".obs),
    OptionsItemModel(
        addtoPlaylist: ImageConstant.imgIconsOnprimarycontainer.obs,
        addToPlaylist1: "Song lyrics".obs),
    OptionsItemModel(
        addtoPlaylist: ImageConstant.imgDownload.obs,
        addToPlaylist1: "Download".obs)
  ]);
}
