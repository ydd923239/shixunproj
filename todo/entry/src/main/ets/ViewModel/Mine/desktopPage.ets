import { desktopClass } from '../../Class/desktopClass';
import { desktop } from '../../Component/desktop';
import headback from '../../Component/headback';

@Entry
@Component
struct DesktopPage {
  @State desktopList: desktopClass[] =
    [new desktopClass("什么是桌面小部件 ?", "TODO清单桌面小部件支持在手机桌面查阅任务、开始任务、完成任务。",
      "http://sgc41cs1y.hn-bkt.clouddn.com/mine/Desktop1.jpg"),
      new desktopClass("如何添加桌面小部件 ?", "手机桌面双指沿对角线滑动屏幕，点击添加工具，找到小部件，拖动至手机桌面上。",
        "http://sgc41cs1y.hn-bkt.clouddn.com/mine/Desktop2.jpg")] as desktopClass[]

  build() {
    Column() {
      headback({ title: "添加小部件"})
      Divider()
        .strokeWidth(10)
      desktop({ desktopList: this.desktopList })
    }
    .width('100%')
    .height('100%')

  }
}