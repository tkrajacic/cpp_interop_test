// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "interop1",
    targets: [
        .executableTarget(
            name: "App",
            dependencies: ["TestLib"],
            swiftSettings: [
                .interoperabilityMode(.Cxx)
            ]
        ),
        .binaryTarget(
            name: "TestLib", 
            path: "testlib.artifactbundle"
        )
    ]
)
