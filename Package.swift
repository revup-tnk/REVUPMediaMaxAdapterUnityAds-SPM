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
        .package(url: "https://github.com/Unity-Technologies/Unity-Ads-Swift-Package.git", exact: "4.19.0"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMaxAdapterUnityAdsTarget",
            dependencies: [
                .target(name: "REVUPMediaMaxAdapterUnityAds"),
                .target(name: "AppLovinMediationUnityAdsAdapter"),
                .product(name: "UnityAds", package: "Unity-Ads-Swift-Package"),
            ],
            path: "Sources",
        ),
        .binaryTarget(
            name: "REVUPMediaMaxAdapterUnityAds",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaMaxAdapterUnityAds.zip",
            checksum: "5945a9d4bf624b18187d5d4960fc8ce328ad460bcd4f8be7c28499ada045a05f"
        ),
        .binaryTarget(
            name: "AppLovinMediationUnityAdsAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/unityads-adapter/AppLovinMediationUnityAdsAdapter-4.19.0.0.zip",
            checksum: "8f22ef200a10cb4cae5ed354f67a4185287202158f21946c019616b70eddd0bb"
        )
    ]
)
