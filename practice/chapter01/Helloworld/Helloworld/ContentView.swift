//
//  ContentView.swift
//  Helloworld
//
//  Created by mac on 2021/01/29.
//  Copyright © 2021 mac. All rights reserved.
//

import SwiftUI

// 構造体
struct ContentView: View {
    // プロパティラッパー@State
    @State var labelText = "Hello SwiftUI"
    // データ型var プロパティbody キーワードsome 戻り値View
    var body: some View {
        VStack(spacing: 80) {
            Text(labelText)
                .font(.largeTitle)
                .foregroundColor(Color.red)
            Button(action: {self.labelText = "Yes Tapped!"}) {
                Text("Tap!!")
                    .font(.footnote)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
                    .frame(width: 70, height: 20)
                    .border(Color.gray)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
