# Factory Method
Decouples the caller from the concrete types it creates.

Two Variants
* Creator subclass per Product Type
* Parameterized Factory Method

Applicability
* Created types need to share a common protocol or base class

```swift
public protocol ThemeCreator {
    static func makeTheme(profile: ColorProfile) -> Theme
}

public enum ColorProfile {
    case light
    case dark
    case blue
}

extension ThemeCreator {
    static public func makeTheme(profile: ColorProfile) -> Theme {
        switch profile {
            case .light:
                return LightTheme()
            case .dark:
                return DarkTheme()
            case .blue:
                return BlueTheme()
        }
    }
}

public class MyThemeCreator: ThemeCreator {}
```
