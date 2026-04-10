// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FPHITrackingWidget",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "FPHITrackingWidget",
            targets: ["FPHITrackingWidget-SPM"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        //.package(url: "git@github.com:fingerprintjs/fingerprintjs-pro-ios.git", .upToNextMinor(from: "2.8.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "FPHITrackingWidget-SPM",
            dependencies: [
                "FPHITrackingWidget",
                //.product(name: "FingerprintPro", package: "fingerprintjs-pro-ios")
            ]),
        .binaryTarget(
            name: "FPHITrackingWidget",
            url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/WIDGET/FPHITrackingWidget/1.4.0/FPHITrackingWidget.zip",
            checksum: "91922b62dcd56a3cf207d6da7e47d4ef3432efc7e871862ed21286f6d1bc799b"
        )
    ]
)
