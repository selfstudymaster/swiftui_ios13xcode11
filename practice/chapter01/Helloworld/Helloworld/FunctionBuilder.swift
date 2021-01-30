import SwiftUI

// 縦に並べた文字列をすべて連結した文字列を生成するファンクションビルダーの定義
@_functionBuilder
public struct StringBuilder {
    public static func buildBlock(_ a: String, _ b: String) -> String {
        a + b
    }
    public static func buildBlock(_ a: String, _ b: String, _ c: String) -> String {
        a + b + c
    }
}

// 使用例
@StringBuilder func ab() -> String {
    "あの"
    "イーハトーヴォの"
}
var str0 = ab()

@StringBuilder func abc() -> String {
    "あの"
    "イーハトーヴォの"
    "すきとおった風、"
}
var str1 = abc()

// こう書くのと同じ
/*
func abc() -> String {
    let a = "あの"
    let b = "イーハトーヴォの"
    let c = "すきとおった風、"
    return StringBuilder.buildBlock(a, b, c)
}
*/

struct FunctionBuilder_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
