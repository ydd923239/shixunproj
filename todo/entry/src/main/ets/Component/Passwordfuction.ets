import { PasswordClass } from '../Class/PasswordClass'

@Component
export struct Passwordfunction{
  @Prop PasswordList:PasswordClass[]=[]
  build() {
    Column({space:10}){
      ForEach(this.PasswordList,(item:PasswordClass)=>{
     Row(){
       Column(){
         Text(item.title)
           .width("30%")
           .fontSize(20)
         Text(item.content)
           .width("50%")
           .fontSize(16)
           .fontColor("#cb6b6969")
       }
       .alignItems(HorizontalAlign.Start)
       Toggle({ type: ToggleType.Switch, isOn: false })
         .selectedColor("#ff609bf5")
         .switchPointColor('#f8fdfbfb')
         .onChange((isOn: boolean) => {
           console.info('Component status:' + isOn)
         })
         .margin({ right: 30 })

     }
     .width('100%')
     .justifyContent(FlexAlign.SpaceBetween)
        Divider()
          .strokeWidth(1)
      })
    }
    .width('100%')
    .height('100%')
    .margin({left:20})
    .alignItems(HorizontalAlign.Start)

  }
}