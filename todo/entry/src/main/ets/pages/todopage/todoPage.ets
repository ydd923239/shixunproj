@Entry
@Component
struct TodoPage {
  @State todolist:TodoItem[] = [
    {
      id: 1,
      thing: '学习',
      list:'学习',
      time:'今天',
      todoFlage:false
    },
    {
      id: 2,
      thing: '运动',
      list:'运动',
      time:'今天',
      todoFlage:false
    },
    {
      id: 3,
      thing: '打球',
      list:'运动',
      time:'今天',
      todoFlage:false
    },
    {
      id:4,
      thing:'数学',
      list:"学习",
      time:'今天',
      todoFlage:false
    }
  ]

  build() {
    RelativeContainer() {
      Column(){
        Row(){
          Column(){
            //todo:插入图片1
            Text('全部')
           }

          Column(){ //todo:插入图片2、3
             }
        }.width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
        .margin({ top: 20,bottom:10 })
        .padding({left:20})

        ForEach(this.todolist, (item: TodoItem) => {
          todoItem({
            item
          })
        }, (item: TodoItem) => JSON.stringify({
          id: item.id
        }))

      }.height('100%')
      .width('100%')
    }
    .height('100%')
    .width('100%')
  }
}

@Component
struct todoItem {
  item:  Partial<TodoItem> = {}
  changeLike: (item: TodoItem) => void = () => {}
  build() {
    Row() {
      Row() {
        Checkbox()
          .width(20)
          .height(20)
          .select(false)
          .selectedColor(Color.Black)
          .shape(CheckBoxShape.ROUNDED_SQUARE)
          .onChange((value: boolean) => {
            console.info('Checkbox2 change is' + value)
          })
          .unselectedColor(Color.Gray)

        Text(this.item.thing)
          .lineHeight(20)
          .fontSize(14)

        Text(this.item.list)
          .lineHeight(20)
          .fontSize(12)
          .fontColor(Color.Gray)
      }.width('80%')

      Row() {
        Text(this.item.time)
          .lineHeight(20)
          .fontSize(14)
          .fontColor(Color.Red)

        //todo:插入图片番茄
      }.width('20%')

    }.justifyContent(FlexAlign.SpaceBetween)
    .alignItems(VerticalAlign.Top)
    .width('100%')
    .padding(15)
  }
}

export class TodoItem {
  id: number = 0
  thing: string = ""
  list:string=''
  time:string=''
  todoFlage:boolean=false
}