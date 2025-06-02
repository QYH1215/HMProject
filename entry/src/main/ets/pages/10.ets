//十、鸿蒙界面开发之输入框的具体案例实现（button组件）

@Entry //页面入口
@Component //定义页面组件，方便实现不同页面的代码复用
//结构体
struct Index {
  //状态变量，用于鸿蒙的App的状态取值
  @State message: string = '你 好';

  //构建 -> 页面
  build() {
    //行
    Row(){
      //列
      Column(){
        //输入框（button组件）
        TextInput({
          placeholder:"请输入用户名"
        }).width('96%')
          .height(60)
          .margin(10)
        TextInput({
          placeholder:"请输入密码"
        }).width('96%')
          .height(60)
          .margin(10)
          .type(InputType.Password)
        Button("登录")
          .width("50%")
      }
    }
  }
}