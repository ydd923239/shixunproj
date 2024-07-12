import { Minefunction } from '../../Class/MineFunctionClass'
import { MineFunctionPage } from '../../Component/MinePagefunction'
import { HeadPage } from './headPage'

@Entry
@Component
export struct Mypage {
  @State MinefunctionList:Minefunction[]=[new Minefunction("http://sgc41cs1y.hn-bkt.clouddn.com/mine/1.jpg", "TODO钟设置","ViewModel/Mine/SettingPage"),
    new Minefunction("http://sgc41cs1y.hn-bkt.clouddn.com/mine/2.jpg", "未来计划","ViewModel/Mine/FuturePlan"),
    new Minefunction("http://sgc41cs1y.hn-bkt.clouddn.com/mine/3.jpg", "密码保护", "ViewModel/Mine/PasswordprotectionPage"),
    new Minefunction("http://sgc41cs1y.hn-bkt.clouddn.com/mine/4.jpg", "备份还原",""),
    new Minefunction("http://sgc41cs1y.hn-bkt.clouddn.com/mine/5.jpg", "桌面小部件","ViewModel/Mine/desktopPage"),
    new Minefunction("http://sgc41cs1y.hn-bkt.clouddn.com/mine/6.jpg", "意见反馈",""),
    new Minefunction("http://sgc41cs1y.hn-bkt.clouddn.com/mine/7.jpg", "评价应用",""),
    new Minefunction("http://sgc41cs1y.hn-bkt.clouddn.com/mine/8.jpg", "隐私政策",""),
    new Minefunction("http://sgc41cs1y.hn-bkt.clouddn.com/mine/9.jpg", "用户协议",""),
    new Minefunction("http://sgc41cs1y.hn-bkt.clouddn.com/mine/10.jpg", "版本检测","")
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