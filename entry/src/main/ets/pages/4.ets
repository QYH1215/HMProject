//原函数：
//function buy(price:number,num:number){
//  console.log('传入的数据:' + price,num)
//
  //1.处理数据
//  let result : number = price * num
  //2.返回结果值
//  return result
//}

//let apple : number = buy(2,3)
//console.log('苹果:' + apple + '元');
//let banana : number = buy(4,4)
//console.log('香蕉:' + banana + '元');

//四、箭头函数
//定义：它是一个特殊的函数，用于简化函数的写法。
//通过变量定义函数，变量名就是函数名。
let buy = (price : number,num : number) => {
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