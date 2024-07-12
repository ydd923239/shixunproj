
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
        .fontWeight(FontWeight.Bold)
      Row({space:20}){
        Image("http://sgc41cs1y.hn-bkt.clouddn.com/mine/tx.jpg")
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


    .width("100%")
    .alignItems(HorizontalAlign.Start)

  }
}