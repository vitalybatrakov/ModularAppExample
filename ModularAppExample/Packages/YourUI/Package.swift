// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YourUI",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "YourUI",
            targets: ["YourUI"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.7.1"))
    ],
    targets: [
        .target(
            name: "YourUI",
            dependencies: [
                .product(name: "SnapKit", package: "SnapKit")
            ]
        )
    ]
)
