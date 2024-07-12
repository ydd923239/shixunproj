import { Minefunction } from '../../Class/MineFunctionClass'
import { MineFunctionPage } from '../../Component/MinePagefunction'
import { HeadPage } from './headPage'

@Entry
@Component
export struct Mypage {
  @State MinefunctionList:Minefunction[]=[new Minefunction("app.media.startIcon", "TODO钟设置",""),
    new Minefunction("app.media.startIcon", "未来计划",""),
    new Minefunction("app.media.startIcon", "密码保护",""),
    new Minefunction("app.media.startIcon", "备份还原",""),
    new Minefunction("app.media.startIcon", "桌面小部件",""),
    new Minefunction("app.media.startIcon", "意见反馈",""),
    new Minefunction("app.media.startIcon", "评价应用",""),
    new Minefunction("app.media.startIcon", "隐私政策",""),
    new Minefunction("app.media.startIcon", "用户协议",""),
    new Minefunction("app.media.startIcon", "版本检测","")
    ] as Minefunction[]

  build() {
    Column({space:10}){
      HeadPage()
      Divider()
        .strokeWidth(8)
        .margin({left:-20})
      MineFunctionPage({functionList:this.MinefunctionList})


    }
    .width('100%')
    .height('100%')
    .margin({left:20})

  }
}