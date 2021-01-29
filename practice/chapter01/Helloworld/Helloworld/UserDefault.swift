import SwiftUI

// 計算型プロパティpropertyWrapper属性をつける
@propertyWrapper
// 属性名UserDefaultを作成
struct UserDefault<T> {
    let key: String
    let defaultValue: T
    // 計算型プロパティwrappedValueは必須
    var wrappedValue: T {
        // @属性名 var プロパティ名 :型 のプロパティに該当
        get {
            return UserDefaults.standard.object(forKey: key)
                as? T ?? defaultValue
        }
        // @属性名 var プロパティ名 :型 のプロパティに該当
        set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
}

// 使い方
enum GlobalSetings {
    @UserDefault(key: "FOO_FEATURE_ENABLED", defaultValue: false)
    static var isFooFeatureEnabled: Bool
    
    @UserDefault(key: "BAR_FEATURE_VALUE", defaultValue: -1)
    static var barFeatureValue: Int
}
