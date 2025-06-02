//十二、鸿蒙界面开发之京东应用登录界面的具体案例实现

import { window } from '@kit.ArkUI';

@Entry
  // 页面入口
@Component
  // 定义页面组件，方便实现不同页面的代码复用
  // 结构体
struct LoginPage {
  windowClass?: window.Window

  async setFullScreen(flag: boolean) {
    if (!this.windowClass) {
      this.windowClass = await window.getLastWindow(getContext(this))
    }
    this.windowClass.setWindowLayoutFullScreen(flag)
  }

  onPageShow(): void {
    this.setFullScreen(true)
  }

  onPageHide(): void {
    this.setFullScreen(false)
  }

  //以上代码为复制粘贴，目的是为了解决当前最新版本的 DevEco Studio 中使用预览器浏览生成的页面时，在上方和下方会出现白色间隙，影响画面效果这一问题
  //此处通过鸿蒙API实现在页面加载时，将窗口设置为全屏模式，从而消除上下白色间距。

  //构建 -> 页面
  build() {
    //行
    Row() {
      //列
      Column() { //设置组件的行间距
        // 构建界面思路：
        // 1.排版（思考布局）
        // 2.内容（使用到哪些基本组件？背景界面、取消图标、帮助文字、京东图标、国家/地址、手机号输入框、同意协议、登录按钮、三个跳转链接、其他登录方式、四个小图标）
        // 3.美化（属性方法的使用）

        //第一行包含取消图标和帮助文本两个组件
        Row({ space: 270 }) {
          // 导入取消图标
          Image($r("app.media.jd_cancel"))
            .width(20)
          // 帮助
          Text("帮助")
        }
        .height(50)
        .margin(0)

        //导入京东图标
        Image($r("app.media.jd_logo"))
          .width(250)
          .margin(0)

        //确认国家/地址
        Column() {
          // 使用一个文本框样式的 Row 容器,模拟“文本框”的外观和布局
          Row() {
            // 左侧文本：国家/地址
            Text('国家/地址                          ')
              .fontSize(16)
              .fontColor(Color.Grey)

            // 右侧文字 + 箭头
            Row() {
              Text('中国（+86）')
                .fontSize(16)
                .fontColor(Color.Gray)

              Image($r('app.media.jd_right'))// 导入准备好的小箭头图标资源
                .width(16)
                .height(16)
                .margin({ left: 4 })
            }
          }
          .height(50) // 行高
          .padding(12) // 行边框
          .borderRadius(12) // 圆角边框
          .backgroundColor(Color.White) // 背景颜色
        }

        //手机号输入框
        TextInput({
          placeholder: "请输入手机号"
        })
          .height(50)// 行高
          .margin({
            top: 12,
            bottom: 0,
            left: 20,
            right: 20
          })// 外边距
          .fontSize(16)// 设置字体大小
          .borderRadius(12)// 圆角边框
          .padding({ left: 12 })// 内边距
          .fontColor(Color.Gray)// 设置文本颜色
          .backgroundColor(Color.White)// 背景颜色
          .type(InputType.PhoneNumber) // 输入框类型

        //同意相关协议
        Column() {
          // 使用一个文本框样式的 Row 容器,模拟“文本框”的外观和布局
          Row({ space: 0 }) {
            // 左侧单选框
            Toggle({ type: ToggleType.Checkbox, isOn: false })
              .width('3%')// 调整大小
              .margin({ top: 2, right: 5 })// 调整位置
              .selectedColor(Color.Blue)// 选中颜色
              .backgroundColor(Color.White) // 背景颜色

            // 右侧相关说明
            Text() {
              Span('我已经阅读并同意')
                .fontColor(Color.Black)
              Span('《京东隐私政策》')
                .fontColor(Color.Blue)
              Span('《京东用户服务协议》')
                .fontColor(Color.Blue)
              Span('未注册的手机号将自动创建京东账号')
                .fontColor(Color.Black)
            }
            .fontSize(13) // 调整字体大小
            .width('100%') // 文本宽度，确保顺利换行
            .textAlign(TextAlign.Start) // 调整文本对齐方式
          }
          .margin(0) // 外边距
          .padding(20) // 行边框
          .alignItems(VerticalAlign.Top) // 将单选框与文本第一行对齐
        }

        //红色登录按钮
        Button("登录")
          .margin(0)// 外边距
          .padding(12)// 内边距
          .width('90%')// 调整按钮宽度
          .fontSize(18)// 调整登录的字体大小
          .backgroundColor(Color.Red) // 按钮背景颜色

        //其他选项
        Row() {
          Text("新用户注册")
            .padding(13)// 内边距
            .fontSize(13)// 字体大小
            .fontColor(Color.Gray)// 字体颜色
            .textAlign(TextAlign.Center) // 居中对齐文本
          Text("账号密码登录")
            .padding(13)// 内边距
            .fontSize(13)// 字体大小
            .fontColor(Color.Gray)// 字体颜色
            .textAlign(TextAlign.Center) // 居中对齐文本
          Text("无法登录")
            .padding(13)// 内边距
            .fontSize(13)// 字体大小
            .fontColor(Color.Gray)// 字体颜色
            .textAlign(TextAlign.Center) // 居中对齐文本
        }

        //其他登录方式
        Text("其他登录方式")
          .margin({ top: 120, bottom: 12 })// 上边距
          .fontSize(15)// 字体大小
          .fontColor(Color.Black) // 字体颜色

        //其他登录方式的图标
        Row() {
          Image($r("app.media.jd_huawei"))
            .width(30)
            .height(30)
          Image($r("app.media.jd_wechat"))
            .width(30)
            .height(30)
          Image($r("app.media.jd_weibo"))
            .width(30)
            .height(30)
          Image($r("app.media.jd_QQ"))
            .width(30)
            .height(30)
        }
        .width('100%') // 设置行宽
        .height(40) // 设置行高
        .justifyContent(FlexAlign.SpaceEvenly) // 调整间距
      }.Background()
    }
  }
}

@Extend(Column)
function Background() {
  .width('100%')
  .height('100%')
  .backgroundImage($r('app.media.jd_login_bg'))
  .backgroundImageSize({ width: '100%', height: '100%' })
} // 设置京东登录界面背景

/*
使用Select组件实现下拉列表选择：
Select([
  {value:"中国 (+86)"},
  {value:"美国 (+1)"},
  {value:"英国 (+44)"},
  {value:"韩国 (+82)"},
  {value:"日本 (+81)"},
  {value:"俄罗斯 (+7)"},
  {value:"新加坡 (+65)"},
]).value('中国（+86）')*/
