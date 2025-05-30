//七、鸿蒙界面开发入门

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
        //存放组件

        //文本组件
        //语法：文本组件 函数名(参数),对象,方法名(参数),可以传枚举名或者常量名
        Text(this.message)
          .fontSize(80)//设置字体大小
          .fontWeight(FontWeight.Bolder)//设置文本的粗细
          .fontColor(Color.Blue)//设置文本颜色
      }.width('100%')//设置列宽
    }
    .height('100%')//设置行占据页面大小
  }
}