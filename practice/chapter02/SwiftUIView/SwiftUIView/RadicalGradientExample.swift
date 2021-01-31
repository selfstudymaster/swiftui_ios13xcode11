import SwiftUI

fileprivate 
let spectrum = Gradient(colors: [
    .red, .yellow, .green, .blue, .purple, .red
])


fileprivate // 同じファイル内ならアクセス可能なアクセス修飾子
let radial = RadialGradient(gradient: spectrum,
                            center: .center,
                            startRadius:0,
                            endRadius:70)

// MARK: サンプル実行用コード

struct RadialGradientExample: View {
    var body: some View {
        Rectangle()
        .fill(radial)
        .frame(width: 100, height: 100)
    }
}

struct RadialGradientExample_Previews: PreviewProvider {
    static var previews: some View {
        RadialGradientExample()
    }
}

/*
fileprivate
struct ContentView: View {
    var body: some View {
        Rectangle()
            .fill(radial)
            .frame(width: 100, height: 100)

    }
}
*/

/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/

