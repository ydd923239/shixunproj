import { Minefunction } from '../Class/MineFunctionClass'


@Component
export struct MineFunctionPage   {

  @Prop functionList:Minefunction[]=[]
  build() {
    Column({space:10}){
      ForEach(this.functionList,(item:Minefunction)=>{
        Row({space:10}){
          Image($r(item.image))
            .width("10%")
            .borderRadius(100)
          Text(item.title)
            .width("30%")
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
