// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YourNetwork",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "YourNetwork",
            targets: ["YourNetwork"]
        ),
    ],
    targets: [
        .target(name: "YourNetwork")
    ]
)
