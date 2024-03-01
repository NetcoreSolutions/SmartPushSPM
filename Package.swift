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
                      url: "https://github.com/NetcoreSolutions/SmartPushSPM/releases/download/3.5.0/SmartPush.xcframework.zip",
                     checksum: "a854897700523383cca353904109a82d05bd7485f01e4696579a770d4e9646ce")
    ]
)
