// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "interop1",
    targets: [
        .executableTarget(
            name: "App",
            dependencies: ["TestLib"],
            cxxSettings: [
                // .disableWarning("nullability-completeness"),
                .unsafeFlags([

                ])
            ],
            swiftSettings: [
                .interoperabilityMode(.Cxx),
                .unsafeFlags([
                    // We know our library has problems
                    "-Xcc", "-Wno-nullability-completeness",
                    "-Xcc", "-std=c++17",
                ])
            ],
            linkerSettings: [
                .linkedLibrary("stdc++"),
                .unsafeFlags([
                    // Ensure our program is linked using lld
                    "-use-ld=lld",
                ])
            ]
        ),
        .binaryTarget(
            name: "TestLib", 
            path: "testlib.artifactbundle"
        )
    ]
)
