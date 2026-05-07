// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "FPHITrackingWidget-SPM",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "FPHITrackingWidget",
            targets: [
                "FPHITrackingWidget",
            ]
        ),
    ],
    targets: [
        .target(
            name: "FPHITrackingWidget",
            dependencies: [
                "FPHITrackingCore",
                "_LocationEssentials",
            ],
            path: "Sources/FPHITrackingWidget"
        ),
        .binaryTarget(
            name: "FPHITrackingCore",
            url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/WIDGET/FPHITrackingWidget/1.4.3/FPHITrackingCore.zip",
            checksum: "ffcf693d95236fce2240440a8045bb8f8d364ffe9668385a1e6f7a143244326f"
        ),
        .binaryTarget(
            name: "_LocationEssentials",
            url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/WIDGET/FPHITrackingWidget/1.4.3/_LocationEssentials.zip",
            checksum: "df06d01bb107b1b3e65cd1a97a70f600ea6f4a2fad85469cefb5727d852d763c"
        ),
    ]
)
