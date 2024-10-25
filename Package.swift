// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "VanillaSPMDemo",
  platforms: [.iOS(.v16)],
  products: [
    .library(
      name: "Payments",
      targets: ["Payments"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/pointfreeco/swift-snapshot-testing", exact: "1.17.5"),
    .package(url: "https://github.com/stripe/stripe-ios-spm", exact: "23.27.3")
  ],
  targets: [
    .target(
      name: "SharedUI",
      dependencies: [
        .product(name: "Stripe", package: "stripe-ios-spm")
      ]
    ),
    .target(
      name: "Payments",
      dependencies: [
        "SharedUI"
      ]
    ),
    .testTarget(
      name: "PaymentsTests",
      dependencies: [
        "Payments",
        .product(name: "SnapshotTesting", package: "swift-snapshot-testing")
      ]
    )
  ]
)
