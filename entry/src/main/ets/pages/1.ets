//一、数据类型存储（变量和常量）

//基本的控制台输出
console.log("消息说明","打印的内容") //刷新后显示日志记录

//AtkTS的基本数据类型
//1.变量存储
// 变量的常见数据类型 string number boolean

// 1.1 字符串 string 类型
// 注意：1.字符串需要用单引号或双引号引起来。例：'字符串',"字符串"。
//      2.存储时，后面存储的内容要与前面的数据类型对应，特别是更新的时候。
let title : string = "非心QYH"
console.log("字符串title",title)

// 1.2 数字 number 类型
let age : number = 20
console.log("年龄age:" + age)

// 1.3 布尔 boolean 类型 (True False)
let isLogin : boolean = true
console.log("登录是否成功：" + isLogin)

//2.常量
const PI : number = 3.14
console.log("PI:" + PI)

//AtkTS的变量命名规则
// 1.只能包含数字，字母，下划线，$，不能以数字开头。
// 2.不能使用内置关键字或者保留字。
// 3.严格区分大小写。

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