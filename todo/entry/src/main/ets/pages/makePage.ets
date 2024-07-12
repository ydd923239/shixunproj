@Entry
@Component
struct MakePage {
  @State message: string = '今日清单';

  build() {
    RelativeContainer() {
      Text(this.message)
        .fontSize(30)
    }
    .height('100%')
    .width('100%')
  }
}