import router  from '@ohos.router'




@Entry
@Component
struct LoginPage {
  @State phone:string=''
  @State code:string=''
  @State userName:string=""
  @State sex:number=0
  @State age:string=""
  @State img:string=""
  @State balance:number=0

  build() {
    Column() {
      Blank()


      Column() {
        Text('欢迎登录')
          .titleStyle()
        Column() {


          Row() {
            Image($r('app.media.ic_public_devices_phone'))
              .iconStyle()
            TextInput({ placeholder: '请输入手机号码', text: this.phone })
              .type(InputType.Number)
              .inputStyle()
              .onChange((value) => {
                this.phone = value;

              })



          }
          .margin({ top: 30 })
          .justifyContent(FlexAlign.SpaceEvenly)

          .width("100%")
          .height("25%")

          Divider()

            .color(Color.Black)
            .strokeWidth(1)
            .margin({ top: 10 })
          Row() {
            Image($r('app.media.ic_public_security'))
              .iconStyle()
            TextInput({ placeholder: '请输入密码', text: this.code })
              .type(InputType.Password)

              .inputStyle()
              .onChange((value) => {
                this.code = value;
              })
          }
          .margin({ top: 30 })
          .justifyContent(FlexAlign.SpaceEvenly)

          .width("100%")
          .height("25%")

          Divider()

            .color(Color.Black)
            .strokeWidth(1)

            .margin({ top: 10 })
        }.width("100%").layoutWeight(10).margin({ top: 30 })
        .height("100%")
        Button('立即登录')
          .backgroundColor(Color.Black)
          .fontColor(Color.White)
          .width('100%')
          .margin({ top: 50 })
          // .onClick(async () => {
          //
          //
          //   const message:AxiosResponse=await Login(this.phone,this.code);
          //   AlertDialog.show({message:message.data.message,
          //   })
          //   if(message.data.code==200){
          //     const userdata:AxiosResponse=await getUser(this.phone)
          //     this.userName=userdata.data["userName"]
          //     this.sex=userdata.data["sex"]
          //     this.age=userdata.data["age"]
          //     this.img=userdata.data["userTx"]
          //     this.balance=userdata.data["balance"]
          //     this.phone=this.phone
          //     AppStorage.setOrCreate('userId', this.phone)
          //     AppStorage.setOrCreate('userName', this.userName)
          //     AppStorage.setOrCreate('sex', this.sex)
          //     AppStorage.setOrCreate('age', this.age)
          //     AppStorage.setOrCreate('img', this.img)
          //     AppStorage.setOrCreate('balance',this.balance)
          //     console.log("userId",this.phone)
          //
          //     AlertDialog.show({message:message.data.message,
          //     })
          //     router.pushUrl({
          //       url: "pages/MainPage",
          //     })
          //
          //
          //   }
          //
          //
          //
          //
          //
          //
          //   console.log(message.data.message)
          //
          // });
          .onClick(() => {
            router.pushUrl({
              url: "pages/MainPage",
            })
          })
        Column(){
          Row() {
            Text('登录即表示已同意')
              .fontSize(10)
              .fontColor('#546B9D')
            Text('《用户使用协议》')
              .fontSize(10)
              .fontColor('#00B3FF')
          }.margin({ top: 20 }).justifyContent(FlexAlign.SpaceEvenly)
          Row({space: 150}){
            Text("注册用户")
              .fontSize(14)
              .backgroundColor(Color.Transparent)
              .onClick(() => {
                router.pushUrl({
                  url: 'pages/enroll'
                })
              })
            Text("忘记密码")
              .fontSize(14)
              .backgroundColor(Color.Transparent)
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceEvenly).flexShrink(1)
          .margin({ top: 10})

        }
      }.formBgStyle().justifyContent(FlexAlign.SpaceEvenly)
      .height('50%')
      .width('100%')
      Row({ space: 10 }) {
        Image('http://sf091id88.hn-bkt.clouddn.com/login/app.jpg')
          .borderRadius(50)
          .width(36)
          .height(36)
        Text('租代陪')
          .fontColor('#546B9D')
          .fontWeight(FontWeight.Bold)
          .fontSize(20)
      }.margin({ top: 70 }).justifyContent(FlexAlign.SpaceEvenly).flexShrink(1).width("30%")

    }
    .justifyContent(FlexAlign.SpaceEvenly)
    .loginBgStyle()
    .flexShrink(1)
  }
}
@Styles function loginBgStyle() {
  .width('100%')
  .height('100%')

  .backgroundImage($r('app.media.1714286395368'))
  .backgroundImageSize({ width: '100%', height: '100%' })
  .padding({
    top: 30, bottom: 30, left: 20, right: 20
  })
}
@Styles function backStyle() {
  .width(25)
  .height(25)
}
@Styles function formBgStyle() {
  .backgroundColor(Color.White)
  .padding(30)
  .borderRadius(20)


}
@Extend(Text) function titleStyle() {
  .fontWeight(FontWeight.Bold)
  .fontSize(22)
  .layoutWeight(0.5)
}
@Styles function iconStyle() {
  .width("100%")
  .height("100%")
  .layoutWeight(0.1)
}
@Extend(TextInput) function inputStyle() {
  .height(40)
  .layoutWeight(1)
  .fontSize(14)
  .backgroundColor(Color.Transparent)
}
@Extend(Button) function buttonStyle(bgColor: ResourceColor, fontColor:
  ResourceColor) {
  .type(ButtonType.Normal)
  .fontSize(14)
  .fontWeight(FontWeight.Medium)
  .borderWidth(1)
  .borderRadius(5)
  .backgroundColor(bgColor)
  .fontColor(fontColor)}


