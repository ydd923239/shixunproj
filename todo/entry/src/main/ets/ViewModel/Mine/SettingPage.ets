import headback from "../../Component/headback"
import settingstyle from '../../Component/settingstyle';
import settingDivder from "../../Component/settingDivider"

@Entry
@Component
struct SettingPage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      headback({ title: "TODO设置" })
      Divider()
        .width('100%')
        .height(8)
        .backgroundColor("#ffe5e5f1")
      Row() {
        settingstyle({ message: "背景音乐" })
        Blank()
        Text("海浪")
          .fontSize(12)
          .margin({ top: "2%" })
          .fontColor(Color.Gray)
        Image("http://sgc41cs1y.hn-bkt.clouddn.com/mine/chevron_right%20%281%29.png")
          .width("3%")
          .margin({ left: "1%", top: "2%", right: "1%" })
          .onClick(() => {

          })
      }
      .width("100%")
      .margin({ bottom: "1%" })

      settingDivder()
      Row() {
        settingstyle({ "message": "铃声通知" })
        Blank()
        Toggle({ type: ToggleType.Switch })
          .margin({ right: "2%" , top: "2%"})

      }
      .width("100%")
      .margin({ bottom: "2%" })

      settingDivder()
      Row() {
        settingstyle({ "message": "震动提醒" })
        Blank()
        Toggle({ type: ToggleType.Switch })
          .margin({ right: "2%",top: "2%" })

      }
      .width("100%")
      .margin({ bottom: "2%" })
      Divider()
        .width('100%')
        .height(8)
        .backgroundColor("#ffe5e5f1")
      Row() {
        settingstyle({ "message": "专注时长" })
        Blank()
        Text("25分钟")
          .fontSize(12)
          .margin({ top: "2%",right:"1%" })
          .fontColor(Color.Gray)
        Image("http://sgc41cs1y.hn-bkt.clouddn.com/mine/chevron_right%20%281%29.png")
          .width("3%")
          .margin({  top: "2%", right: "1%" })

      }
      .width("100%")
      .margin({ bottom: "1%" })
      settingDivder()
      Row() {
        settingstyle({ "message": "短时休息" })
        Blank()
        Text("5分钟")
          .fontSize(12)
          .margin({ top: "2%",right:"1%" })
          .fontColor(Color.Gray)
        Image("http://sgc41cs1y.hn-bkt.clouddn.com/mine/chevron_right%20%281%29.png")
          .width("3%")
          .margin({  top: "2%", right: "1%" })

      }
      .width("100%")
      .margin({ bottom: "1%" })
      settingDivder()
      Row() {
        settingstyle({ "message": "长时休息" })
        Blank()
        Text("15分钟")
          .fontSize(12)
          .margin({ top: "2%",right:"1%" })
          .fontColor(Color.Gray)
        Image("http://sgc41cs1y.hn-bkt.clouddn.com/mine/chevron_right%20%281%29.png")
          .width("3%")
          .margin({  top: "2%", right: "1%" })

      }
      .width("100%")
      .margin({ bottom: "1%" })
      settingDivder()
      Row() {
        settingstyle({ "message": "长时间间隔" })
        Blank()
        Text("4个番茄")
          .fontSize(12)
          .margin({ top: "2%",right:"1%" })
          .fontColor(Color.Gray)
        Image("http://sgc41cs1y.hn-bkt.clouddn.com/mine/chevron_right%20%281%29.png")
          .width("3%")
          .margin({  top: "2%", right: "1%" })

      }
      .width("100%")
      .margin({ bottom: "2%" })
      settingDivder()
      Row() {
        settingstyle({ "message": "禁用休息" })
        Blank()
        Toggle({ type: ToggleType.Switch })
          .margin({ right: "2%" , top: "2%"})

      }
      .width("100%")
      .margin({ bottom: "1%" })

      settingDivder()
      Row() {
        settingstyle({ "message": "自动开始休息" })
        Blank()
        Toggle({ type: ToggleType.Switch })
          .margin({ right: "2%" , top: "2%"})

      }
      .width("100%")
      .margin({ bottom: "2%" })

      settingDivder()
      Row() {
        settingstyle({ "message": "自动开始下次专注" })
        Blank()
        Toggle({ type: ToggleType.Switch })
          .margin({ right: "2%" , top: "2%"})

      }
      .width("100%")
      .margin({ bottom: "1%" })

      settingDivder()
    }
    .alignItems(HorizontalAlign.Start)
    .height('100%')
    .width('100%')
  }
}
