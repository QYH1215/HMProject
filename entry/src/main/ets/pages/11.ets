//十一、鸿蒙界面开发之华为应用登录界面的具体案例实现

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
      Column({ space:40 }){//设置组件的行间距
        // 构建界面思路：
        // 1.排版（思考布局）
        // 2.内容（使用到哪些基本组件？图片、输入框、密码框、按钮、两个跳转链接）
        // 3.美化（属性方法的使用）

        //导入华为图标
        Image($r("app.media.huawei"))
          .width(50)
        //输入框
        TextInput({
          placeholder:"请输入用户名"
        })
        //密码框
        TextInput({
          placeholder:"请输入密码"
        }).type(InputType.Password)
        //按钮
        Button("登录")
          .width('100%')
        //两个并排的跳转链接
        Row(){
          Text("前往注册")
          Text("忘记密码")
        }
      }
    }
    .width('95%')
    .padding(35)//行边框
  }
}