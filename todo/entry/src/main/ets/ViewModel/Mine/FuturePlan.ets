

import { FuturePlanitem } from '../../Class/FuturePlanitem'
import headback from '../../Component/headback';
@Entry
@Component
struct FuturePlan {
  @State offsetX: number = 0;
  @State offsetY: number = 0;
  @State positionX: number = 0;
  @State positionY: number = 0;

  @State list: FuturePlanitem[] = [
    new FuturePlanitem('明天八点上学', '2023-01-01', '还有300天'),
    new FuturePlanitem('某某的生日', '2023-01-02', '还有40天'),
    new FuturePlanitem('作业完成限时', '2023-01-03', '还有50天'),
    new FuturePlanitem('下学期开学', '2023-01-04', '还有60天'),]
  build() {
    Column(){
      headback({ title: "未来计划" })
      Row() {
        List({space: 10}) {
          ForEach(this.list, (item: FuturePlanitem) => {
            ListItem(){
            Row() {
              Column() {
                Text(item.title)
                  .textAlign(TextAlign.Start)






                Text(item.nowtime)

              }
              .margin({ left: "5%" })
              .width("60%")
              .alignItems(HorizontalAlign.Start)


              Text(item.futuretime)
                .textAlign(TextAlign.Start)
                .margin({ left: "5%" })
               .width("40%")


            }
            }.height("10%")
            .width("100%")
            .backgroundColor("#F5F5F5")



          })
        }
        .width("100%")
      }

       Image("http://sgc41cs1y.hn-bkt.clouddn.com/%E5%8F%91%E5%B8%83%20%281%29.png")

         .position({x:300,y:580})
         .translate({ x: this.offsetX, y: this.offsetY, z: 0 })
         .gesture(PanGesture()
           .onActionStart((event: GestureEvent) => {
             console.info(' start');
           })// 当触发拖动手势时，根据回调函数修改组件的布局位置信息
           .onActionUpdate((event: GestureEvent) => {
             this.offsetX = this.positionX + event.offsetX;
             this.offsetY = this.positionY + event.offsetY;
           })
           .onActionEnd(() => {
             this.positionX = this.offsetX;
             this.positionY = this.offsetY;
             console.info(this.positionX.toString(), this.positionY.toString());
           })
         )
         .width(55)
         .height(55)


    }

  }
}