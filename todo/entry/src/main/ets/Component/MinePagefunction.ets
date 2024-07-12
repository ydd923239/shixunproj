import { Minefunction } from '../Class/MineFunctionClass'
import router from '@ohos.router'


@Component
export struct MineFunctionPage   {

  @Prop functionList:Minefunction[]=[]
  build() {
    Column({space:10}){
      ForEach(this.functionList,(item:Minefunction)=>{
        Row({space:10}){
          Image(item.image)
            .width("10%")
            .borderRadius(20)
          Text(item.title)
            .width("30%")
          Image("http://sgc41cs1y.hn-bkt.clouddn.com/mine/chevron_right%20%281%29.png")
            .width("5%")
            .margin({left:"150"})
            .onClick(()=>{
              console.log("点击了")
              router.pushUrl({
                url:item.url
              })
            })
        }
        Divider()
          .strokeWidth(1)
      })
    }
    .width('100%')
    .height('35%')
    .alignItems(HorizontalAlign.Start)
  }

}
