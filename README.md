# TPMediationHelper

TradPlus iOS Mediation 测试与排查工具。

## 环境要求

- iOS 12.0+
- Xcode 14+

## CocoaPods 接入

在 `Podfile` 中添加：

```ruby
platform :ios, '12.0'

target 'YourApp' do
  pod 'TPMediationHelper', '1.3.1'
end
```

然后执行：

```bash
pod install
```

## Swift Package Manager 接入

### 方式一：Xcode 图形界面

1. 打开 `Xcode` -> `File` -> `Add Package Dependencies...`
2. 输入仓库地址：`https://github.com/tradplus/pod_TPMediationHelper_sdk.git`
3. 选择版本规则（建议 `Up to Next Major`）
4. 选择产品 `TPMediationHelper` 并添加到目标 Target

### 方式二：在 `Package.swift` 中声明

```swift
dependencies: [
    .package(url: "https://github.com/tradplus/pod_TPMediationHelper_sdk.git", from: "1.3.1"),
],
targets: [
    .target(
        name: "YourTarget",
        dependencies: [
            .product(name: "TPMediationHelper", package: "pod_TPMediationHelper_sdk")
        ]
    )
]
```

## 使用说明

在需要位置引入并打开工具：

```objc
#import <TPMediationHelper/TPMediationHelper.h>

[TPMediationHelper open];
```

## 说明

- 资源文件（nib）已内置在 `TPMediationHelper.xcframework` 中。
- 使用 SPM 或 CocoaPods 均无需额外手动拷贝 `TPMediationHelper.bundle`。
- **宿主 App 必须已集成并与 Helper 编译期头文件兼容的 `TradPlusAds`（CocoaPods / SPM / 本地工程均可）**。自 **1.3.1** 起，Helper **工程上不再链接** `TradPlusAds`，通过 `-undefined dynamic_lookup` 等与宿主已加载的 SDK **共用同一份运行时**；请使用 **1.3.1+**，并确保主工程已正确链接 `TradPlusAds`，否则可能出现 `appId = unknown` 或符号解析失败。
