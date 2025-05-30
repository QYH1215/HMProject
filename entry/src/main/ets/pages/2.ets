//二、数组

//语法：let 数组名 : 类型[] = [数据1,数据2,数据3,......]

//数组中存储的每个数据，都有自己的编号，编号从零开始（索引，下标）
let names : string[ ] = ['软件2216','祁一恒','2022005352']
console.log("数组 names:" , names)

//通过索引来获取数组
console.log(names[1])

//通过索引或下标更新数组
names[0] = '软件2216班'
console.log(names[0])
console.log("数组 names:" , names)

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
    .height('50%')
    .width('100%')
  }
}