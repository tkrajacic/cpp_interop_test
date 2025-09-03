// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "interop1",
    targets: [
        .executableTarget(
            name: "App",
            swiftSettings: [
                .interoperabilityMode(.Cxx)
            ]
        ),
    ]
)
