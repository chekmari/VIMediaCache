// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "VIMediaCache",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "VIMediaCache",
            targets: ["VIMediaCache"]
        )
    ],
    targets: [
        .target(
            name: "VIMediaCache",
            path: "VIMediaCache",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("Cache"),
                .headerSearchPath("ResourceLoader")
            ],
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("MobileCoreServices")
            ]
        )
    ]
)
