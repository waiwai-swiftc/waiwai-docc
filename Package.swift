// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WaiwaiKit",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "WaiwaiKit",
            targets: ["WaiwaiKit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/apple/swift-docc.git", .revision("8a61eef586f9a5f8ba636dafeb2c515b1c1d65db")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "WaiwaiKit",
            dependencies: []),
        .testTarget(
            name: "WaiwaiKitTests",
            dependencies: ["WaiwaiKit"]),
    ]
)
