// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "XLPagerTabStrip",
    platforms: [.iOS(.v11)],
    products: [
        .library(
            name: "XLPagerTabStrip",
            targets: ["XLPagerTabStrip"]),
    ],
    targets: [
        .target(
            name: "FXPageControl",
            path: "FXPageControl",
            sources: ["."],
            publicHeadersPath: "."
        ),
        .target(
            name: "XLPagerTabStrip",
            dependencies: ["FXPageControl"],
            path: "XLPagerTabStrip",
            sources: ["Sources"],
            resources: [.process("Resources")]
        )
    ]
)
