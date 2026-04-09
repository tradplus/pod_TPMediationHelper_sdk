// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "TPMediationHelper",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "TPMediationHelper",
            targets: ["TPMediationHelper"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "TPMediationHelper",
            path: "TPMediationHelper/TPMediationHelper.xcframework"
        ),
    ]
)
