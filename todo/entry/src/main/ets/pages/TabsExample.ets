
@Entry
@Component
export struct TabsExample {
  @State fontColor: string = '#ff747579'
  @State selectedFontColor: string = '#ff0e0e0e'
  @State currentIndex: number = 0
  private controller: TabsController = new TabsController()

  @Builder tabBuilder(index: number, name: string) {
    Column() {
      Text(name)
        .fontColor(this.currentIndex === index ? this.selectedFontColor : this.fontColor)
        .fontSize(18)
        .fontWeight(this.currentIndex === index ? 500 : 400)
        .lineHeight(22)
        .margin({ top: 17, bottom: 10 })
      Divider()
        .strokeWidth(2)
        .color('#ff000000')
        .opacity(this.currentIndex === index ? 1 : 0)
    }.width('100%')

  }

  build() {
    Column() {
      Tabs({ barPosition: BarPosition.Start, index: this.currentIndex, controller: this.controller }) {
        TabContent() {
          view1()
        }.tabBar(this.tabBuilder(0, 'TODO'))

        TabContent() {
          view2()
        }.tabBar(this.tabBuilder(1, '任务'))

      }
      .vertical(false)
      .barMode(BarMode.Fixed)
      .barWidth(360)
      .barHeight(56)
      .animationDuration(400)
      .onChange((index: number) => {
        this.currentIndex = index
      })
      //.backgroundColor('#F1F3F5')
    }.width('100%')
    .height('100%')
  }
}

@Component struct view1{
  build(){
    Column({space:10}){
      Row(){
        huizong()
      }.margin({top:10})
      .RowStyle()
      .height('25%')

      Row(){
        fanqiequxian()
      }.RowStyle()
      .height('24%')

      Row(){
        timequxian()
      }.RowStyle()
      .height('24%')

    }.backgroundColor('#ffefefef')
    .height('100%')
    .width('100%')
  }
}

@Component
struct huizong{
  build(){
    Column(){
      Row(){
        Text('汇总').tiStyle()
      }.ti1Style()

      Grid(){
        GridItem(){
          Column(){
            Text('0').numStyle()
            Text("今日收成").huiStyle()
          }
        }

        GridItem(){
          Column(){
            Text('10').numStyle()
            Text("本周收成").huiStyle()
          }
        }

        GridItem(){
          Column(){
            Text('10').numStyle()
            Text("总收成").huiStyle()
          }
        }

        GridItem(){
          Column(){
            Text('0').numStyle()
            Text("今日专注时间(分钟)").huiStyle()
          }
        }

        GridItem(){
          Column(){
            Text('30').numStyle()
            Text("本周专注时间(分钟)").huiStyle()
          }
        }

        GridItem(){
          Column(){
            Text('30').numStyle()
            Text("总专注时间(分钟)").huiStyle()
          }
        }
      }
      //设置Grid为3列，并且均分
      .columnsTemplate("1fr 1fr 1fr")
      //设置2行，并且均分
      .rowsTemplate("1fr 1fr")
    }

  }
}

@Component
struct fanqiequxian {
  build() {
    Column() {
      Row() {
        Text('TODO曲线').tiStyle()
      }.ti1Style()
      Row(){
        Polyline({width:"90%",height:"90%"})
          .points([[0,90],[50,90],[100,50],[150,90],[200,90],[250,60],[300,90]])
          .fillOpacity(0)
          .stroke(Color.Orange)
          .strokeWidth(3)
      }

    }
  }
}

@Component
struct timequxian {
  build() {
    Column() {
      Row() {
        Text('专注时间曲线').tiStyle()
      }.ti1Style()

      Row(){
        Polyline({width:"90%",height:"90%"})
          .points([[0,90],[50,90],[100,50],[150,90],[200,90],[250,60],[300,90]])
          .fillOpacity(0)
          .stroke(Color.Orange)
          .strokeWidth(3)
      }
    }
  }
}

@Component struct view2{
  build(){
    Column({space:10}){
      Row(){
        huizong2()
      }.margin({top:10})
      .RowStyle()
      .height('15%')

      Row(){
        wanchengquxian()
      }.RowStyle()
      .height('24%')

      Row(){
        qingdan()
      }.RowStyle()
      .height('30%')

    }.backgroundColor('#ffefefef')
    .height('100%')
    .width('100%')
  }
}

@Component
struct huizong2{
  build(){
    Column(){
      Row(){
        Text('汇总').tiStyle()
      }.ti1Style()

      Grid(){
        GridItem(){
          Column(){
            Text('0').numStyle()
            Text("今日完成数").huiStyle()
          }
        }

        GridItem(){
          Column(){
            Text('10').numStyle()
            Text("本周完成数").huiStyle()
          }
        }

        GridItem(){
          Column(){
            Text('10').numStyle()
            Text("总完成数").huiStyle()
          }
        }
      }
      //设置Grid为3列，并且均分
      .columnsTemplate("1fr 1fr 1fr")
      //设置2行，并且均分
      .rowsTemplate("1fr")
    }

  }
}

@Component
struct wanchengquxian {
  build() {
    Column() {
      Row() {
        Text('完成曲线').tiStyle()
      }.ti1Style()
      Row(){
        Polyline({width:"90%",height:"90%"})
          .points([[0,90],[50,90],[100,50],[150,90],[200,90],[250,60],[300,90]])
          .fillOpacity(0)
          .stroke(Color.Orange)
          .strokeWidth(3)
      }

    }
  }
}

@Component
struct qingdan {
  private gradientColor: LinearGradient = new LinearGradient([{ color: Color.Yellow, offset: 0.5 }, { color: Color.Orange, offset: 1.0 }])
  build() {
    Column() {
      Row() {
        Text('清单分布').tiStyle()
      }.ti1Style()


      Progress({ value: 70, total: 100, type: ProgressType.Ring })
        .width(130).style({ strokeWidth: 30 })
        .color(this.gradientColor)
        .margin({top:30})
    }.padding({bottom:20})
  }
}

@Extend(Text) function tiStyle(){
  .fontSize('16vp')
  .fontColor('#ff747579')
}

@Extend(Text) function numStyle(){
  .fontSize('24vp')
  .fontColor(Color.Black)
}

@Extend(Text) function huiStyle(){
  .fontSize('13vp')
  .fontColor('#ff747579')
}

@Extend(Row) function RowStyle(){
  .backgroundColor(Color.White)
  .padding({top:10,bottom:10})
}


@Extend(Row) function ti1Style(){
  .justifyContent(FlexAlign.Start)
  .width('100%')
  .margin({left:20,top:5})
}
