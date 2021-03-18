// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "Bindings",
  platforms: [
    .iOS(.v10),
    .macOS(.v10_15),
    .tvOS(.v13),
    .watchOS(.v6),
  ],
  products: [
    .library(name: "Bindings", targets: ["Bindings"]),
    .library(name: "UIKitBindings", targets: ["UIKitBindings"]),
  ],
  dependencies: [
    .package(url: "https://github.com/cx-org/CombineX", from: "0.3.0")
  ],
  targets: [
    .target(name: "Bindings", dependencies: ["CombineX"]),
    .target(name: "UIKitBindings", dependencies: ["Bindings", "CombineX"]),
  ]
)
