import { TabsExample } from './TabsExample'

@Entry
@Component
export struct Statistics {
  build() {
    Column(){
      Top()
      TabsExample()

    }.width('100%').height('100%')
  }
}

@Component
struct Top{
  build(){
    Row(){
      Text('统计').fontSize(18).fontColor('#ff0a0a0a')
        .margin({left:17})
    }.justifyContent(FlexAlign.Start)
    .margin({top:17,bottom:17})
    .width('100%')
  }
}

