import router from '@ohos.router';

@Component
struct headback {
  @Prop title: string = '';
  build() {
   Row() {
      Image("http://sgc41cs1y.hn-bkt.clouddn.com/headback/ic_public_arrow_left%20%281%29.png")
        .width("10%")

        .alignSelf(ItemAlign.Start)
        .onClick(() => {
          router.back()
        })
      Text(this.title)
        .fontSize(26)
        .fontColor(Color.White)
        .alignSelf(ItemAlign.Center)
        .margin({ left: "5%" })
    }
    .backgroundColor("#fff35e72")
    .width("100%")
  }
}
export default headback