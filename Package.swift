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
                      url: "https://github.com/NetcoreSolutions/SmartPushSPM/releases/download/3.0.1/SmartPush.xcframework.zip",
                     checksum: "b68aaa8a66f94c36bc8c8c53155d8f39639e0254be1c97dfc5f0b0e138bdc7ed")
    ]
)
