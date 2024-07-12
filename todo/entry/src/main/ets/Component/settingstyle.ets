@Component
export struct settingstyle {
  @Prop message: string = '';

  build() {
    Column() {
      Text(this.message)
        .fontSize(15)

        .margin({top:"2%",left:"3%"})
    }

  }
}
export default settingstyle