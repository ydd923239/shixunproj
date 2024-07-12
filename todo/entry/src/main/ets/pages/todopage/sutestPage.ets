import { promptAction } from '@kit.ArkUI';
import { ToDo } from './ToDo';
import { ToDoListItem } from './TodoListItem';
import { STYLE_CONFIG, Constant } from './Constants';

@Extend(Image)
function ImageStyle() {
  .width(STYLE_CONFIG.IMAGE_SIZE)
  .aspectRatio(1)
  .margin(STYLE_CONFIG.IMAGE_MARGIN)
}

@Entry
@Component
struct ToDoList {
  @State toDoData: ToDo[] = [];
  @State achieveData: ToDo[] = [];

  deleteTodoItem(item: ToDo) {
    if (item.isCompleted) {
      this.achieveData = this.achieveData.filter(todoItem => item.key !== todoItem.key);
    } else {
      this.toDoData = this.toDoData.filter(todoItem => item.key !== todoItem.key);
    }
    promptAction.showToast({ message: $r('app.string.deleted') });
  }

  @Builder
  itemEnd(item: ToDo) {
    Row({ space: STYLE_CONFIG.ICON_GUTTER }) {
      Image($r('app.media.ic_public_settings_filled')).ImageStyle()
        .onClick(() => {
          promptAction.showToast({ message: $r('app.string.incomplete') });
        })
      Image($r('app.media.ic_public_detail_filled')).ImageStyle()
        .onClick(() => {
          promptAction.showToast({ message: $r('app.string.incomplete') });
        })
      Image($r('app.media.ic_public_delete_filled')).ImageStyle()
        .onClick(() => {
          this.deleteTodoItem(item);
        })
    }
    .padding(STYLE_CONFIG.OPERATION_BUTTON_PADDING)
    .justifyContent(FlexAlign.SpaceEvenly)
  }

  build() {
    Column() {
      Row({ space: STYLE_CONFIG.LIST_ITEM_GUTTER }) {
        Text($r('app.string.todo'))
          .fontSize($r('sys.float.ohos_id_text_size_headline7'))
        Blank()
        Image($r('app.media.ic_public_add_filled'))
          .width(STYLE_CONFIG.MENU_IMAGE_SIZE)
          .aspectRatio(1)
          .onClick(() => {
            TextPickerDialog.show({
              range: Constant.AVAILABLE_THINGS,
              onAccept: (value: TextPickerResult) => {
                this.toDoData.unshift(new ToDo(Constant.AVAILABLE_THINGS[Number(value.index)]));
              },
            });
          })
      }
      .height(Constant.PERCENT_12)
      .width(Constant.PERCENT_FULL)
      .padding({
        left: $r('sys.float.ohos_id_max_padding_start'),
        right: $r('sys.float.ohos_id_max_padding_end'),
      })
      .backgroundColor(Color.White)

      List({ initialIndex: 0, space: STYLE_CONFIG.LIST_ITEM_GUTTER }) {
        if (this.toDoData.length !== 0) {
          ListItem() {
            Text($r('app.string.undo'))
              .fontSize($r('sys.float.ohos_id_text_size_headline8'))
          }
        }
        ForEach(this.toDoData, (toDoItem: ToDo) => {
          ListItem() {
            ToDoListItem({
              toDoItem: toDoItem,
              achieveData: this.achieveData,
              toDoData: this.toDoData
            })
          }
          .swipeAction({ end: this.itemEnd(toDoItem), edgeEffect: SwipeEdgeEffect.Spring })
        }, (toDoItem: ToDo) => toDoItem.key)

        if (this.achieveData.length !== 0) {
          ListItem() {
            Text($r('app.string.done'))
              .fontSize($r('sys.float.ohos_id_text_size_headline8'))
          }
        }
        ForEach(this.achieveData, (toDoItem: ToDo) => {
          ListItem() {
            ToDoListItem({
              toDoItem: toDoItem,
              achieveData: this.achieveData,
              toDoData: this.toDoData
            })
          }
          .swipeAction({ end: this.itemEnd(toDoItem), edgeEffect: SwipeEdgeEffect.Spring })
        }, (toDoItem: ToDo) => toDoItem.key)
      }
      .layoutWeight(1)
      .listDirection(Axis.Vertical)
      .edgeEffect(EdgeEffect.Spring)
      .padding({
        top: $r('sys.float.ohos_id_default_padding_top'),
        left: $r('sys.float.ohos_id_default_padding_start'),
        right: $r('sys.float.ohos_id_default_padding_end'),
      })
    }
    .backgroundColor($r('app.color.background_color'))
    .height(Constant.PERCENT_FULL)
    .width(Constant.PERCENT_FULL)
  }
}