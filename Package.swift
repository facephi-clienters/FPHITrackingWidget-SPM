// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "FPHITrackingWidget",
    platforms: [
        .iOS(.v13),
    ],
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
            url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/WIDGET/FPHITrackingWidget/1.4.6/FPHITrackingWidget.zip",
            checksum: "72a6f2886bb850c7ce187cc9b57ac9b5aecb5614631b3b02f66d09ef5bf853b9"
        )
    ]
)
