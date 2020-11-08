// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PopupDialog",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "PopupDialog",
            targets: ["PopupDialog"]),
    ],
    dependencies: [
        .package(url: "https://github.com/KyoheiG3/DynamicBlurView.git",
                 from: "5.0.4"),
        .package(url: "https://github.com/Quick/Nimble.git",
                 .upToNextMajor(from: "8.0.1")),
        .package(name: "FBSnapshotTestCase", url: "https://github.com/bfernandesbfs/ios-snapshot-test-case.git", .branch("feature/spm")),
    ],
    targets: [
        .target(
            name: "PopupDialog",
            dependencies: ["DynamicBlurView"]),
        .testTarget(
            name: "PopupDialogTests",
            dependencies: [
                "PopupDialog",
                "Nimble",
                "FBSnapshotTestCase"
            ],
            exclude: ["Info.plist"]),
    ]
)
