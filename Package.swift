// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CoinGekoAPI",
    platforms: [
        .macOS(.v11),
        .iOS(.v15),
        .tvOS(.v15),
        .watchOS(.v10),
        .visionOS(.v1),
    ],
    products: [
        .library(
            name: "CoinGekoAPI",
            targets: ["CoinGekoAPI"]
        ),
    ],
    targets: [
        .target(
            name: "CoinGekoAPI"
        ),
        .testTarget(
            name: "CoinGekoAPITests",
            dependencies: ["CoinGekoAPI"]
        ),
    ]
)
