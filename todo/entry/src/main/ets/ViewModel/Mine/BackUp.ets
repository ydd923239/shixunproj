import headback from '../../Component/headback';
@Entry
@Component
struct BackUp {
  dialogController: CustomDialogController = new CustomDialogController({
    builder: CustomDialogExample(),
  })

  dialogController1: CustomDialogController = new CustomDialogController({
    builder: CustomDialogExample(),
  })
  @State message: string = 'Hello World';

  build() {
    Column() {
      headback({title:"备份还原"})
      Divider()
        .strokeWidth(10)
      Button("备份数据到云端")
        .fontSize(26)
        .fontWeight(FontWeight.Bold)
        .height("10%")
        .margin({bottom:"5%"})
        .width("100%")
        .type(ButtonType.Normal )
        .backgroundColor("#E8E8E8")
        .fontColor(Color.Black)
        .onClick(() => {
          this.dialogController.open()

        })

      Button("从云端还原数据")
        .fontSize(26)
        .fontWeight(FontWeight.Bold)
        .height("10%")
        .type(ButtonType.Normal )
        .width("100%")
        .backgroundColor("#E8E8E8")
        .fontColor(Color.Black)
        .onClick(() => {
          this.dialogController1.open()

        })
    }
    .width('100%')
    .alignItems(HorizontalAlign.Center)

  }
}


@CustomDialog
struct CustomDialogExample {
  controller: CustomDialogController = new CustomDialogController({
    builder: CustomDialogExample({}),
  })

  build() {
    Column() {
      Text('数据以已备份到云端')
        .fontSize(20)
        .margin({ top: "8%" })
    }
  }
}
@CustomDialog
struct CustomDialogExample1 {
  controller: CustomDialogController = new CustomDialogController({
    builder: CustomDialogExample({}),
  })

  build() {
    Column() {
      Text('已从云端还原数据')
        .fontSize(20)
        .margin({ top: "8%" })
    }
  }
}