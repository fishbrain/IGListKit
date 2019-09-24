// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "IGListKit",
    products: [
        .library(name: "IGListKit", targets: ["IGListKit"])
    ],
    targets: [
        .target(
            name: "IGListKit",
            path: ".",
            exclude: [],
            sources: ["Source"],
            publicHeadersPath: "Source"),
        )
    ]
)
