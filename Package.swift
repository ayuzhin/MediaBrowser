// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "MediaBrowser",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "MediaBrowser",
            targets: ["MediaBrowser"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.0.0"),
        .package(url: "https://github.com/luispadron/UICircularProgressRing.git", from: "6.5.0")
    ],
    targets: [
        .target(
            name: "MediaBrowser",
            dependencies: [
                "SDWebImage",
                "UICircularProgressRing"
            ],
            path: "MediaBrowser",
            exclude: ["Info.plist"],
            resources: [
                .process("MediaBrowser.xcassets")
            ]
        )
    ]
)
