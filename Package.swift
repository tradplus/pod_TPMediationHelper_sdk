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
            url: "https://github.com/tradplus/pod_TPMediationHelper_sdk/releases/download/1.4.1/TPMediationHelper.xcframework.zip",
            checksum: "83b76d5d8e20dc87f989471c7b98c20c6792880cd05903392223c7d0c7b3334f"
        ),
    ]
)
