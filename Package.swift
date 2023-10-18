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
                      url: "https://github.com/NetcoreSolutions/SmartPushSPM/releases/download/3.4.0/SmartPush.xcframework.zip",
                     checksum: "8716456009af7bab75fb626b28c5a7e7313d490bba930349a6347b167879aae1")
    ]
)
