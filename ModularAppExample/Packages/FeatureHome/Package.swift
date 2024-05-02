// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FeatureHome",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "FeatureHome",
            targets: ["FeatureHome"]
        ),
    ],
    dependencies: [
        .package(name: "YourUI", path: "../YourUI")
    ],
    targets: [
        .target(
            name: "FeatureHome",
            dependencies: [
                "YourUI"
            ]
        )
    ]
)
