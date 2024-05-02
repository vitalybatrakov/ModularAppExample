// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FeatureProfile",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "FeatureProfile",
            targets: ["FeatureProfile"]
        ),
    ],
    dependencies: [
        .package(name: "YourUI", path: "../YourUI")
    ],
    targets: [
        .target(
            name: "FeatureProfile",
            dependencies: [
                "YourUI"
            ]
        )
    ]
)
