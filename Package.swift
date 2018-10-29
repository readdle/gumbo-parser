// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftGumbo",
    products: [
        .library(name: "SwiftGumbo", targets: ["SwiftGumbo"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "SwiftGumbo", dependencies: []),
    ]
)
