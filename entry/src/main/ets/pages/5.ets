//五、AtkTS对象

//常见的对象有：接口对象和类对象。
//定义对象：姓名：祁一恒，性别：男，年龄：20。
//对象方法（行为）：学习，吃饭，睡觉。

//通过接口
// 1.定义接口
// 定义行为：
interface Person {
  name : string
  sex : string
  age : number

  // 定义方法的类型
  study:(work:string) => void
  eat:(food:string) => void
  sleep:(hours:number) => void
}
// 2.基于接口定义对象
let qyh : Person = {
  name : '祁一恒',
  sex : '男',
  age : 20,

  // 定义方法
  study:(work:string) =>{
    console.log('我要做' + work + '作业');
  },
  eat:(food:string) =>{
    console.log("我要吃" + food);
  },
  sleep:(hours:number) =>{
    console.log('我要睡' + hours + '小时');
  }
}
// 3.获取对象属性：对象名.属性名
console.log('姓名：' + qyh.name)
console.log('性别：' + qyh.sex)
console.log('年龄：' + qyh.age)

// 4.方法的调用
qyh.study("实习")
qyh.eat("大盘鸡")
qyh.sleep(8)


//通过类：class 类名{
// 属性1,
// 属性2,
// ...
//
// constructor(形参1,形参2,...){
// this.属性1 = 形参1
// this.属性2 = 形参2
// ...
// }
//}

//类的定义
class Events {
  id : number
  name : string

  constructor(id:number,name:string) {
    this.id = id
    this.name = name
  }
}
//类的使用
let event = new Events(1,'祁一恒')

console.log("事件ID：" + event.id)
console.log("事件名：" + event.name)

// 类不能定义方法

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize($r('app.float.page_text_font_size'))
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          this.message = 'Welcome';
        })
    }
    .height('100%')
    .width('100%')
  }
}