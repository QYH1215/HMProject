//三、AtkTS函数

// 定义函数的语法：function 函数名(形参可选){
//  return (可选)
// }

function func( ){
  console.log("Ciallo～(∠・ω< )⌒☆")
}//无参

// 函数的调用
func ( )

//函数的具体应用
function buy(price:number,num:number){
  console.log('传入的数据:' + price,num)

  //1.处理数据
  let result : number = price * num
  //2.返回结果值
  return result
}

let apple : number = buy(2,3)
console.log('苹果:' + apple + '元');
let banana : number = buy(4,4)
console.log('香蕉:' + banana + '元');

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