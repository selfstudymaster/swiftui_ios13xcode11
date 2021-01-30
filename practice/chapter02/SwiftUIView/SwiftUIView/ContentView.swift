//
//  ContentView.swift
//  SwiftUIView
//
//  Created by mac on 2021/01/30.
//  Copyright © 2021 mac. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // Imageビュー
//        Image("tensai_icon_02")
        // UIImageからSwiftUIのImageを作成するには、イニシャライザの引数uiImageを使用
        // Image(uiImage: UIImage(named: "tensai_icon_02")!)
        
        // システムアイコンを使用する(SF Symbles)
        Image(systemName: "circles.hexagongrid.fill")
            .font(.largeTitle)
            .foregroundColor(.orange)
        
        
//        // Textビュー
//        Text(String(repeating: "Hello World ", count: 20))
//            // 行数の指定
//            .lineLimit(3)
//            // 文字列を省略(...)する場所の指定 head middle tail
//            .truncationMode(.middle)
//            // 行間の幅の調整
//            .lineSpacing(50)
        
        // Textビューの外観
//        Text("SwiftUiを学ぶ")
//            // fontモディファイア
//            .font(.largeTitle)
//            // boldモディファイア
//            .bold()
//            // italicモディファイア
//            .italic()
//            // fontWeightモディファイア
//            .fontWeight(.regular)
//            // baselineモディファイア
//            .baselineOffset(30)
//            // kerningモディファイア(2文字間の間隔)
//            .kerning(4)
//            // trackingモディファイア(文字列全体の文字間隔)
//            // kerningと同時に指定された場合はtrackingが優先される
//            .tracking(4)
//            // underlineモディファイア
//            .underline(color: Color.red)
//            // 取り消し線モディファイア
//            .strikethrough(color: Color.blue)
//
        // モディファイアの適用順序
        // backgroundを先に指定した場合、後のpaddingで指定した余白は染まらない
//        Text("Hellow SwiftUI!")
//            .background(Color.purple)
//            .padding()
        
        // paddingを先に指定した場合、後の背景色の余白も染まる
//        Text("Hellow SwiftUI!")
//            .padding()
//            .background(Color.purple)
        
//        // maskモディファイア
//        Image("tensai_icon_02")
//            .frame(width: 300, height: 300)
//            .mask(Color(red: 0.0,
//                        green: 0.0,
//                        blue: 0.0,
//                        opacity: 0.3))
//            // 角丸指定
//            .cornerRadius(30)
        
//        // ビューの画像を円形でクリッピング(切り抜き)
//        Image("tensai_icon_02")
//            .frame(width: 300, height: 300)
//            .clipShape(Circle())
        
//        // ビューの画像を矩形でクリッピング(切り抜き)
//        Image("tensai_icon_02")
//            .frame(width: 300, height: 300)
//            .border(Color.blue)
//            .clipped()
        
//        // 画像にビューを重ねてキャプションをつける
//        Image("tensai_icon_02")
//        .overlay(
//            Text("SwiftUI")
//                .font(.largeTitle)
//                .foregroundColor(.yellow)
//                .padding(),
//            alignment: .top)
//
//        // ビューの前にビューを重ねる時のサイズは元のビューに制限される
//        Text("Hello SwiftUI!")
//            .background(Color.yellow)
//            // ビューの前にビューを重ねる
//            .overlay(
//                Color.green
//                    .offset(x: 10, y: 10))
//            // ビューを前に重ねる
//            .overlay(
//                Text("Hacking to the Swift")
//                    .background(Color.pink)
//                    .offset(x: 20, y: 20))
        
//        Circle()
//            .frame(width: 150, height: 150)
//            .foregroundColor(Color.yellow)
//            .background(Color.black)
        
//        Text("Hellow SwitfUI!")
//        .padding()
//            // 前景として使用できるのはColorビューのみ
//            .foregroundColor(Color.yellow)
//            .background(Color.black)
        
//        Text("Hellow SwitfUI!")
//            .font(.largeTitle)
//            .background(
//                Image("tensai_icon_01"))
        
//        Text("Hello SwiftUI")
//            .foregroundColor(.white)
//            .background(Color.black) // Textビューの初期サイズの背景色
//            .padding(.init(top: 10,
//                           leading: 30,
//                           bottom: 90,
//                           trailing: 70))
//            .background(Color.yellow) // paddingで指定した枠の背景色
        
//        Text("Hello SwiftUI!")
//            .foregroundColor(.white)
//            .background(Color.black) // Textビューの初期サイズの背景色
//            .padding(50)
//            .background(Color.yellow) // paddingで指定した枠の背景色
        
//        Color(red: 0, green: 1, blue: 1)
//            // セーフエリアを無効化(frame等で指定していないこと前提)
//            .edgesIgnoringSafeArea(.vertical)
        
//        Text("Hello SwiftUI")
//            .frame(width: 150, height: 30)
//            .border(Color.red)
//            // 元の位置の左上から横(x)は右方向に、縦(y)は下方向へ値を指定
//            .offset(x: 50, y: 50)
        
        
//        Text("Hello SwiftUI!")
//            // positionで枠の座標軸(左上からの位置)を指定した後ろにframeで枠のサイズ指定
//            .position(x: 120, y: 150)
//            .border(Color.red, width: 5)
//            .frame(width: 200, height: 200)
            
//       Text("この一行テキスト、枠に収まらないと切り捨てだけどfiedSize()カマすとはみ出すよ")
//            .fixedSize() // frameより先に指定
//            .frame(width: 200, height: 20)
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
