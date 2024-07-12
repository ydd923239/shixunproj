import { PasswordClass } from '../../Class/PasswordClass';
import headback from '../../Component/headback';
import { Passwordfunction } from '../../Component/Passwordfuction';

@Entry
@Component
struct PasswordprotectionPage {
  @State message: string = 'Hello World';
  @State PasswordList:PasswordClass[]=[new PasswordClass("手势锁","支持当前设备，免费使用"),
  new PasswordClass("指纹锁","支持当前设备")] as PasswordClass[]

  build() {
    Column(){
      headback({title:"密码保护"})
      Divider()
        .strokeWidth(10)
      Passwordfunction({PasswordList:this.PasswordList})
    }
  }
}