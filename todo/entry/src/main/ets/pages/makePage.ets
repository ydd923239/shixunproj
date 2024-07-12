import router from '@ohos.router';
@Entry
@Component
struct MakePage {
  @State message: string = '今日任务';

  build() {
    Column(){
    Row() {
      Text(this.message)
        .fontSize(30)
        .margin({ top: 20,left: 100 })
    }.height(70).width('100%')
Row(){
      Text('任务')
  Select([{ value: '收集箱'},
    { value: '学习' },
    { value: '闹钟'},
    { value: '熟悉番茄清单' }])
    .margin({ left: 70})
    .selected(2)

    .font({ size: 16, weight: 500 })
    .fontColor('#182431')
    .selectedOptionFont({ size: 16, weight: 400 })
    .optionFont({ size: 16, weight: 400 })
    .onSelect((index: number) => {
      console.info('Select:' + index)
    })
}.height(50)
      Row(){
        Text('截至时间')
        Select([{ value: '今天'},
          { value: '明天' },
          { value: '后天'},
          { value: '自定义时间' }])
          .margin({ left: 70})
          .selected(2)

          .font({ size: 16, weight: 500 })
          .fontColor('#182431')
          .selectedOptionFont({ size: 16, weight: 400 })
          .optionFont({ size: 16, weight: 400 })
          .onSelect((index: number) => {
            console.info('Select:' + index)
          })
      }.height(50)
      Row(){
        Text('预计')
        Select([{ value: '1次'},
          { value: '2次' },
          { value: '3次'},
          { value: '循环' }])
          .margin({ left: 70})
          .selected(2)

          .font({ size: 16, weight: 500 })
          .fontColor('#182431')
          .selectedOptionFont({ size: 16, weight: 400 })
          .optionFont({ size: 16, weight: 400 })
          .onSelect((index: number) => {
            console.info('Select:' + index)
          })
      }.height(50)
      Row(){
        Text('每次')
        Select([{ value: '25分钟'},
          { value: '30分钟' }])
          .margin({ left: 70})
          .selected(2)

          .font({ size: 16, weight: 500 })
          .fontColor('#182431')
          .selectedOptionFont({ size: 16, weight: 400 })
          .optionFont({ size: 16, weight: 400 })
          .onSelect((index: number) => {
            console.info('Select:' + index)
          })
      }.height(50)
      Row(){
      Button('提交')
        .bottonstyle()
        .onClick(()=>{
          console.log('点击了提交按钮')
          router.pushUrl({ url: 'pages/CalendarPage' })
        })
      }
 }
  }
}
@Extend(Button) function bottonstyle(){
  .backgroundColor(Color.Black)
  .width('80%')
  .fontColor(Color.White)
}