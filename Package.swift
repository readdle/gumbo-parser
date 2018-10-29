import PackageDescription

let package = Package(
    name: "SwiftGumbo",
    products: [
        .library(name: "SwiftGumbo", type: .static, targets: ["SwiftGumbo"])
    ],
    targets: [
    	.target(name: "SwiftGumbo", path: "./src")
    ]
)