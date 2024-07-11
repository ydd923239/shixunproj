
@Component
export struct HeadPage {
  @State message: string = 'Hello World';
  @State name:string="张三";
  @State image:string="app.media.startIcon"
  @State UserId:string="12014";

  build() {
    Column({space:10}) {

      Text("我的")
        .fontSize(26)
        .fontWeight(FontWeight.Bolder)
      Row({space:10}){
        Image($r("app.media.startIcon"))
          .width("20%")

          .borderRadius(100)
        Column({space:10}){
          Text(this.name)
            .fontSize(22)
            .width("20%")
          Text("ID :"+this.UserId)
            .fontSize(22)
            .width("30%")
        }
        .alignItems(HorizontalAlign.Start)
      }
    }
    .margin({left:20})
    .height("100%")
    .width("100%")
    .alignItems(HorizontalAlign.Start)

  }
}