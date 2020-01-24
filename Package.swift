// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "kitura-tests",
    dependencies: [
        .package(url: "https://github.com/IBM-Swift/Kitura", from: "2.9.1")
    ],
    targets: [
        .target(name: "kitura-tests", dependencies: [ .target(name: "Application"), "Kitura"]),
        .target(name: "Application", dependencies: [ "Kitura" ]),

        .testTarget(name: "ApplicationTests" , dependencies: [.target(name: "Application"), "Kitura" ])
    ]
)
