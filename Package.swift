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
            sources: ["Source". "Source/Common", "Source/Common/Internal", "Source/Internal"],
            publicHeadersPath: "Source"
        )
    ]
)
