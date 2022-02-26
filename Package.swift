// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BYAlertManager",
    platforms: [
        .macOS(.v12),
        .iOS(.v15),
        .tvOS(.v15),
        .watchOS(.v8)
    ],
    products: [
        .library(
            name: "BYAlertManager",
            targets: ["BYAlertManager"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.0.1")),
        .package(url: "https://github.com/huri000/SwiftEntryKit", .exact("2.0.0"))
    ],
    targets: [
        .target(
            name: "BYAlertManager",
            dependencies: [
                "SnapKit",
                "SwiftEntryKit"
            ]),
        .testTarget(
            name: "BYAlertManagerTests",
            dependencies: ["BYAlertManager"]),
    ]
)
