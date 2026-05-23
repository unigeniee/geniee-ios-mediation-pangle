// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GenieeMediationPangle",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "GenieeMediationPangle",
            targets: ["GenieeMediationPangleTarget"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/unigeniee/swift-package-manager-geniee-ios-sdk.git",
            from: "8.4.3"
        ),
        .package(
            url: "https://github.com/bytedance/AdsGlobalPackage.git",
            from: "7.0.0"
        )
    ],
    targets: [
        .target(
            name: "GenieeMediationPangleTarget",
            dependencies: [
                "GenieeMediationPangle",
                .product(name: "GNAdSDK", package: "swift-package-manager-geniee-ios-sdk"),
                .product(name: "AdsGlobalPackage", package: "AdsGlobalPackage")
            ],
            path: "Sources/GenieeMediationPangleTarget"
        ),
        .binaryTarget(
            name: "GenieeMediationPangle",
            url: "https://github.com/unigeniee/geniee-ios-mediation-pangle/releases/download/8.3.100/GenieeMediationPangle.8.3.1.0.zip",
            checksum: "38e084764a21ccbc11c367c0fbc9d123ea8c3e9b435f79c4e26cd7f5454f475f"
        )
    ]
)
