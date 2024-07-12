import { Statistics } from './Statistics';

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
      .tabBar(this.barBuilder(0,"代办","http://sgc41cs1y.hn-bkt.clouddn.com/agent.jpg","http://sgc41cs1y.hn-bkt.clouddn.com/agented.jpg"))
      TabContent() {
        Text('代办集')
      }
      .tabBar(this.barBuilder(1,'代办集','http://sgc41cs1y.hn-bkt.clouddn.com/agents.jpg','http://sgc41cs1y.hn-bkt.clouddn.com/agentsed.jpg'))
      TabContent() {
        Statistics()
      }

      .tabBar(this.barBuilder(2,"统计数据","http://sgc41cs1y.hn-bkt.clouddn.com/statistics.jpg","http://sgc41cs1y.hn-bkt.clouddn.com/statisticsed.jpg"))

      TabContent() {
        Text('我的')
      }
      .tabBar(this.barBuilder(3,"我的","http://sgc41cs1y.hn-bkt.clouddn.com/main.jpg","http://sgc41cs1y.hn-bkt.clouddn.com/mained.jpg"))
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
        .tabTitleStyle(this.currentTabIndex===index? "#ffbc7703" :"#ffa2a1a1")
    }
  }
}
@Extend(Text) function tabTitleStyle(color: ResourceColor) {
  .fontSize(10)
  .fontWeight(FontWeight.Medium)
  .fontColor(color) //Color.Black
  .margin({ bottom: 2 })
}