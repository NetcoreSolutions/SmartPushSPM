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
                      url: "https://github.com/NetcoreSolutions/SmartPushSPM/releases/download/1.0.0/SmartPush.xcframework.zip",
                     checksum: "bf0b9ef0bcdb7c2cb26cfead9fa2ea5c2c17c1681eb0886633d61a3272042e1f")
    ]
)
