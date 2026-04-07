// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaMaxAdapterUnityAds",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "REVUPMediaMaxAdapterUnityAds",
            targets: ["REVUPMediaMaxAdapterUnityAdsTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.5.1"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterUnityAdsTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterUnityAds"),
                .target(name: "REVUPMediaMaxAdapterUnityAdsMediationAdapter"),
                .target(name: "UnityAds"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterUnityAds",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/REVUPMediaMaxAdapterUnityAds.zip",
            checksum: "e80c3d06cbf7e67d2a39402e3ccecd8af5dfa6efab18a6b2b9ae2fc42dd86623"
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterUnityAdsMediationAdapter",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/AppLovinMediationUnityAdsAdapter.xcframework.zip",
            checksum: "29e110e685d5fc8c11ed83d810bc25bea4b59d771446e50ef9a806f5a9e2837f"
        ),
        .binaryTarget(
            name: "UnityAds",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/UnityAds.xcframework.zip",
            checksum: "5782f94d48fa7d1fa88182247f687833015a1aada1d7d5ceb88356fe5c8b047d"
        ),
    ]
)
