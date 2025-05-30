//六、AtkTS的类型

//1.联合类型
// 定义：变量可以支持多种数据类型
// 语法：变量名：类型1|类型2|类型3|...

// 性别可选：男，女，保密
let gender : 'man'|'woman'|'secret' = 'secret'
console.log(gender)

//2.枚举类型
// 需求：利用枚举类型给颜色变量设置主色
// 取值范围：红色，黄色，蓝色

// a.定义枚举 （定义常数列表）
enum ThemeColor{
  Red = '#ff0f29',
  Yellow = '#FFFF00',
  Blue = '#0000FF'
}
// b.给变量设置枚举值
let color : ThemeColor = ThemeColor.Blue
console.log("color:",color)



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