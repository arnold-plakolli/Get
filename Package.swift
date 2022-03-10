// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Get",
    platforms: [.iOS(.v13), .macOS(.v10_15), .watchOS(.v6), .tvOS(.v13)],
    products: [
        .library(name: "Get", targets: ["Get"]),
    ],
    dependencies: [
        .package(url: "https://github.com/WeTransfer/Mocker.git", from: "2.3.0")
    ],
    targets: [
        .target(name: "Get"),
        .testTarget(name: "GetTests", dependencies: ["Get", "Mocker"], resources: [.process("Resources")]),
    ]
)
