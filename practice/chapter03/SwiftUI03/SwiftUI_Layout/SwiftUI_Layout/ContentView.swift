//
//  ContentView.swift
//  SwiftUI_Layout
//
//  Created by mac on 2021/02/01.
//  Copyright © 2021 mac. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // 縦並びのVStackスタック
        VStack(alignment: .leading, spacing: 20) {
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
            Group {
                if Bool.random() { 
                    Image("tensai_icon_2021_02")
                } else {
                    Text("てんさい")
                }
            }
        }.frame(width: 250, height: 150)
         .background(Color.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
