//八、鸿蒙界面开发之文本域的具体案例实现（布局思路及属性方法）

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
        //布局思路：先排版，再内容
        Text('小说简介')
          .width('100%')
          .height(40)
          .fontSize(20)
          .fontWeight(700) // 100~900的数字，加粗700，默认值400
        Row(){
          Text('科幻')
            .width("23%")
            .textAlign(TextAlign.Center)
            .padding(5)
            .fontWeight(FontWeight.Bold)
            .backgroundColor("#f5f5f5")
            .margin("10px")
          Text('逻辑')
            .width("23%")
            .textAlign(TextAlign.Center)
            .padding(5)
            .fontWeight(FontWeight.Bold)
            .backgroundColor("#f5f5f5")
            .margin("10px")
          Text('推理')
            .width("23%")
            .textAlign(TextAlign.Center)
            .padding(5)
            .fontWeight(FontWeight.Bold)
            .backgroundColor("#f5f5f5")
            .margin("10px")
          Text('烧脑')
            .width("23%")
            .textAlign(TextAlign.Center)
            .padding(5)
            .fontWeight(FontWeight.Bold)
            .backgroundColor("#f5f5f5")
            .margin("10px")
        }
      }
      .width('100%')
      .height('100%')
    }.width('100%')
  }
}