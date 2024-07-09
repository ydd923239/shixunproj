
@Entry
@Component
struct MainPage{
  @State message: string = 'Hello World'
  @State currentTabIndex:number=0; //记录当前选项卡的index
  build() {
    Tabs() {
      TabContent() {
        Text('代办')

      }
      .tabBar(this.barBuilder(0,"代办","http://sf091id88.hn-bkt.clouddn.com/image/%E4%BA%A4%E6%98%93-%E7%A7%9F.png","http://sf091id88.hn-bkt.clouddn.com/image/%E4%BA%A4%E6%98%93-%E7%A7%9F%20%281%29.png"))
      TabContent() {
Text('代办集')
      }
      .tabBar(this.barBuilder(1,'代办集','http://sf091id88.hn-bkt.clouddn.com/image/%E4%BB%A3.png','http://sf091id88.hn-bkt.clouddn.com/image/%E4%BB%A3%20%281%29.png'))
      TabContent() {
Text('统计数据')
      }

      .tabBar(this.barBuilder(2,"统计数据","http://sf091id88.hn-bkt.clouddn.com/image/%E9%99%AA%E7%8E%A9%E5%AE%982.png","http://sf091id88.hn-bkt.clouddn.com/image/%E9%99%AA%E7%8E%A9%E5%AE%982%20%281%29.png"))

      TabContent() {
Text('我的')
      }
      .tabBar(this.barBuilder(3,"我的","http://sf091id88.hn-bkt.clouddn.com/image/icon%EF%BC%8F%E5%B9%BF%E5%9C%BA.png","http://sf091id88.hn-bkt.clouddn.com/image/icon%EF%BC%8F%E5%B9%BF%E5%9C%BA%20%281%29.png"))
    }
    .barPosition(BarPosition.End)
    .onChange(index=>{
      this.currentTabIndex=index;
    })
  }
  // 自定义tabbar
  @Builder barBuilder(index: number, title: string, icon: string, inconSelected: string) {
    Column() {
      Image(this.currentTabIndex === index ? inconSelected : icon)
        .width(30)
        .height(30)
      Text(title)
        .tabTitleStyle(this.currentTabIndex===index?Color.Blue:Color.Black)
    }
  }
}
@Extend(Text) function tabTitleStyle(color: ResourceColor) {
  .fontSize(10)
  .fontWeight(FontWeight.Medium)
  .fontColor(color) //Color.Black
  .margin({ bottom: 2 })
}