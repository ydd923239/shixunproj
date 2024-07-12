@Component
export struct settingDivider {
  @Prop message: string = '';

  build() {
    Column() {
      Divider()
        .margin({left:"3%"})
        .backgroundColor("#ffe5e5f1")
    }

  }
}
export default settingDivider