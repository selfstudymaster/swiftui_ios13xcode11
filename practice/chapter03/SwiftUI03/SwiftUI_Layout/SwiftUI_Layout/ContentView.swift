//
//  ContentView.swift
//  SwiftUI_Layout
//
//  Created by mac on 2021/02/01.
//  Copyright © 2021 mac. All rights reserved.
//

import SwiftUI

// カスタムアラインを定義
extension VerticalAlignment {
    private enum CustomAlign : AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context.height / 2
        }
    }
    public static let customAlign = VerticalAlignment(CustomAlign.self)
}

struct ContentView: View {
    var body: some View {

        // 縦並びのVStackスタック
        //VStack(alignment: .leading, spacing: 20) {
//            // 縦並びのVStackスタック
//            VStack {
//                Text("Hello, World!")
//                Divider() // 仕切り線を挿入
//                Text("SwiftUI!")
//            }.background(Color.red)
//            // 横並びのHStackスタック
//            HStack(alignment: .bottom) {
//                Spacer()
//                Text("Hello, World!")
//                Spacer()
//                Text("SwiftUI!").font(.largeTitle)
//                Spacer()
//            }.background(Color.blue)
//            Text("SwiftUI!")
//                .background(Color.green)
            // 上に重ねるZStackスタック
//            ZStack(alignment: .top) {
//                Image("tensai_icon_2021_02")
//                Text("SwiftUI!")
//                    .font(.largeTitle)
//                    .foregroundColor(.gray)
//                    .padding(.top)
//            }
            // ビューの構文にif文を使って画像かテキストかをランダムで表示
//            Group {
//                if Bool.random() {
//                    Image("tensai_icon_2021_02")
//                } else {
//                    Text("てんさい")
//                }
//            }
            
            // ビューのアラインメントを揃える
            // テキスト、画像、テキストをそのまま並べた場合
//            HStack(alignment: .bottom) {
//                Text("Delicious").font(.caption)
//                Image("tensai_icon_2021_02_small")
//                Text("Tensai Milk Tea").font(.largeTitle)
//            }
            
            // テキスト、画像、テキストのベースラインを揃えて並べた場合
//            HStack(alignment: .lastTextBaseline) {
//                Text("Delicious").font(.caption)
//                Image("tensai_icon_2021_02_small")
//                Text("Tensai Milk Tea").font(.largeTitle)
//            }
            
            // 画像のベースラインを画像の高さ87%の位置に、テキストをベースラインに指定して並べた場合
//            HStack(alignment: .lastTextBaseline) {
//                Text("Delicious").font(.caption)
//                Image("tensai_icon_2021_02_small").alignmentGuide(.lastTextBaseline) {d in d.height * 0.87 }
//                Text("Tensai Milk Tea").font(.largeTitle)
//            }

            // ViewDimensions構造体のSubscribe(添字付け)
//            VStack(alignment: .leading) {
//                Text("Delicious")
//                // 先頭を表すleadingが+10で右に10ズレた位置が先頭となった関係で、左に10ズレる
//                Text("tapioca").alignmentGuide(.leading){d in d[.leading] + 10}
//                Text("Milk Tea")
//            }
            
        //}.frame(width: 250, height: 150)
        //.background(Color.yellow)
        
        // カスタムアライメントを引数で呼び出してテキストの位置を設定
        HStack(alignment: .customAlign, spacing: 25) {
            VStack {
                Text("1st")
                Text("2nd")
                Text("3rd")
                    .border(Color.blue)
                    //.overlay(centerLine)
                    .alignmentGuide(.customAlign) { d in d.height / 2}
                Text("4th")
            }.padding(5).border(Color.blue)
            VStack {
                Text("02")
                Text("03")
                    .border(Color.blue)
                    //.overlay(centerLine)
                    .alignmentGuide(.customAlign) { d in d.height / 2}
                Text("04")
                Text("05")
            }.padding(5).border(Color.blue)
        }.padding(5).border(Color.blue)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
