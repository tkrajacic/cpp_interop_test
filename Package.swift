// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "interop1",
    targets: [
        .executableTarget(
            name: "interop1",
            swiftSettings: [
                .interoperabilityMode(.Cxx)
            ]
        ),
    ]
)
