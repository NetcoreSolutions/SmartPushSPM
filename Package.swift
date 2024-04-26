// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SmartPushSDK",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "SmartPushSPM",
            targets: ["SmartPushSPM", "SmartPush"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "SmartPushSPM"),
        .binaryTarget(name: "SmartPush",
                      url: "https://github.com/NetcoreSolutions/SmartPushSPM/releases/download/3.5.1/SmartPush.xcframework.zip",
                     checksum: "c03a1d8850c827d7c4a71975af56205ab6d14db1cc93b26de9ad3093f123af4b")
    ]
)
