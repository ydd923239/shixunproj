import { CJCalendar } from 'cjcalendar'
import router from '@ohos.router';

@Entry
@Component
export struct CalendarPage {
  @State message: string = '日期';
  @State nextMonthDays: number[] = [];
  build() {

    Column() {

      Row() {
        Text('<' + this.message + '>')
          .fontSize(25)

          .align(Alignment.Start)
        Image('http://sggcgj2ye.hn-bkt.clouddn.com/%E6%97%A5%E6%9C%9F.png')
          .height(50).margin({ left: 150 })
        Image('http://sggcgj2ye.hn-bkt.clouddn.com/%E4%B8%89%E4%B8%AA%E7%82%B9%E7%82%B9-copy.png')
          .height(20)
          .bindMenu([
            {
              value: '排序',
              action: () => {
                console.info('handle 排序 select')
              }
            },
            {
              value: '隐藏已有任务',
              action: () => {
                console.info('handle 任务 select')
              }
            },
          ])
      }.height(50)

      Row() {
        CJCalendar()
      }.height(400).width('100%')

        Row(){

         }
      .height(290)
      .width('100%')

      Image('http://sggcgj2ye.hn-bkt.clouddn.com/%E5%8A%A0%E5%8F%B7.png')
        .height(30)
        .margin({ left: 300})
        .onClick(() => {
          router.pushUrl({ url: 'pages/makePage' })
        })

    }


}
}
