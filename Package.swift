// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "interop1",
    targets: [
        .executableTarget(
            name: "App",
            dependencies: ["TestLib"],
            cxxSettings: [
                .unsafeFlags([
                    // "-Xlinker", "-fuse-ld=lld",
                ])
            ],
            swiftSettings: [
                .interoperabilityMode(.Cxx),
                .unsafeFlags([
                    // "-Xlinker", "-fuse-ld=lld",
                ])
            ],
            linkerSettings: [
                .unsafeFlags([
                    // "-Xlinker", "-fuse-ld=lld",
                ])
            ]
        ),
        .binaryTarget(
            name: "TestLib", 
            path: "testlib.artifactbundle"
        )
    ]
)
