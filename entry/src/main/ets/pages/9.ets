//九、鸿蒙界面开发之图片组件的具体案例实现

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
        //图片组件

        //1.加载网络图片
        Image("https://tse1-mm.cn.bing.net/th/id/OIP-C.agmzOlboc7Tuemgb8-uAgQHaNK?rs=1&pid=ImgDetMain")
          .height('110%')

        //2.加载本地图片
        //2.1需要将图片存储到entry/src/main/resources/base/media
        //2.2引入本地文件
        Image($r("app.media.startIcon"))
          .width('20%')
      }
    }
  }
}