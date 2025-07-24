// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SwiftyJSON",
    platforms: [.iOS(.v11)],
    products: [
        .library(name: "SwiftyJSON", targets: ["SwiftyJSON"])
    ],
    targets: [
        .target(name: "SwiftyJSON", 
                dependencies: [],
                resources: [
                    .copy("PrivacyInfo.xcprivacy")
                ]
               ),
        .testTarget(
            name: "SwiftJSONTests",
            dependencies: ["SwiftyJSON"],
            resources: [
                .copy("Tests.json")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
