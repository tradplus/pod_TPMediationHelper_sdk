# 测试工具更新日志

## 1.4.0

- **版本**：`+[TPMediationHelper getVersion]` 与 Xcode `MARKETING_VERSION` 对齐为 **1.4.0**；重新打包 `TPMediationHelper.xcframework`。
- **仓库**：移除已废弃的独立 **`TPMediationHelper.bundle`**，资源仅随 **xcframework** 分发（SPM / CocoaPods 一致）。
- **工程策略**：延续 1.3.1 起的不链入 `TradPlusAds`、`-F` 头路径 + `-undefined dynamic_lookup` 与宿主共用运行时。

## 1.3.1

- **工程链接**：`TPMediationHelper` 目标不再将 `TradPlusAds.xcframework` 加入链接阶段；通过 `OTHER_CFLAGS` 的 `-F` 指向 xcframework 内对应 slice，仅用于编译期头文件。
- **与宿主 TradPlus 共用运行时**：`OTHER_LDFLAGS` 使用 `-ObjC` 与 `-undefined dynamic_lookup`，由宿主已链接的 `TradPlusAds` 提供 `TradPlus` 等符号，避免 Helper 内再静态链入一份 SDK 导致 `appId = unknown`、状态不一致等问题。
- **分发**：以 `TPMediationHelper/TPMediationHelper.xcframework` 作为 SPM `binaryTarget`（路径不变）；nib 等资源仍内置在 xcframework 中。

## 1.3.0

支持 Moloco

## 1.1.9

支持 TaurusX

## 1.1.8

支持 YSONetwork

## 1.1.7

版本更新

## 1.1.6

支持TradPlus SDK v11.1.0 增加 KwaiAds

## 1.1.5

支持TradPlus SDK v10.9.0 增加 Tanx

更新三方 SKAdNetwork 列表


## 1.1.4

支持TradPlus SDK v10.3.0 增加 Amazon

## 1.1.3

支持TradPlus SDK v10.2.0

## 1.1.2

支持TradPlus SDK v10.0.0

## 1.1.1

支持 zMaticoo

## 1.1.0

Vungle平台更名为 Liftoff

更新三方 SKAdNetwork 列表

## 1.0.9

支持SDK在unity中调用

## 1.0.8

支持TradPlus SDK v9.1.0

## 1.0.7

支持TradPlus SDK v8.8.0

## 1.0.6

支持TradPlus SDK v8.7.0，最低适配版本修改为： TradPlus v8.7.0

## 1.0.5

支持TradPlus SDK v8.6.0

## 1.0.4

支持TradPlus SDK v8.4.0 及 新增广告平台 Bigo

## 1.0.3

修正Mintegral三方SDK版本号显示错误的问题

