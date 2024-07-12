import { desktopClass } from '../Class/desktopClass'

@Component
export struct desktop {
  @Prop desktopList: desktopClass[] = []

  build() {

    Column() {

      List({ space: 10}) {
        ForEach(this.desktopList, (item: desktopClass) => {
          ListItem() {
            Column({ space: 10 }) {
              Text(item.title)
                .fontSize(23)
              Text(item.content)
              Image(item.image)
                .width("80%")
            }
            .width("100%")
            .width("100%")
            .alignItems(HorizontalAlign.Start)
          }

        })


      }
    }
    .width("100%")
    .height("100%")
    .margin({ left: "8%" })
  }
}