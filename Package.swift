// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "SwiftGumbo",
    products: [
        .library(name: "SwiftGumbo", type: .static, targets: ["SwiftGumbo"]),
    ],
    dependencies: [
    ],
    targets: [
    	.target(name: "SwiftGumbo", path: "./src")
    ]
)