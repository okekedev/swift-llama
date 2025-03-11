// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "LLamaSwift",
    platforms: [
        .macOS(.v12),
        .iOS(.v14),
        .watchOS(.v4),
        .tvOS(.v14),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "LLamaSwift",
            targets: ["LLamaSwift"]),
    ],
   dependencies: [
    .package(url: "https://github.com/apple/swift-log.git", from: "1.0.0"),
],
    targets: [
        .target(
    name: "llama-cpp-swift",
    dependencies: ["Logging"]
),
        ),
        .testTarget(
            name: "llama-cpp-swiftTests",
            dependencies: ["LLamaSwift"]
        ),
    ]
)
