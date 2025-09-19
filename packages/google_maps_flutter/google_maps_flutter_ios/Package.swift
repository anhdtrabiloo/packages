// swift-tools-version:5.6
import PackageDescription

let package = Package(
  name: "google_maps_flutter_ios",
  platforms: [
    .iOS(.v12)
  ],
  products: [
    .library(name: "google_maps_flutter_ios", type: .static, targets: ["google_maps_flutter_ios"])
  ],
  dependencies: [
    .package(url: "https://github.com/googlemaps/ios-maps-sdk", from: "10.3.0"),
    .package(url: "https://github.com/googlemaps/google-maps-ios-utils", from: "6.1.3")
  ],
  targets: [
    .target(
      name: "google_maps_flutter_ios",
      dependencies: [
        .product(name: "GoogleMaps", package: "ios-maps-sdk"),
        .product(name: "GoogleMapsUtils", package: "google-maps-ios-utils")
      ],
      path: "ios"
    )
  ]
)
