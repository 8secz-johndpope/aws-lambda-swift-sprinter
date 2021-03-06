// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "S3Test",
    products: [
        .executable(name: "S3Test", targets: ["S3Test"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        //.package(path: "../../../aws-lambda-swift-sprinter-core"),
        //.package(url: "https://github.com/swift-sprinter/aws-lambda-swift-sprinter-core", from: "1.0.0-alpha.3"),
        //.package(path: "../../../aws-lambda-swift-sprinter-nio-plugin"),
        .package(url: "https://github.com/swift-sprinter/aws-lambda-swift-sprinter-nio-plugin", from: "1.0.0"),
        .package(url: "https://github.com/swift-aws/aws-sdk-swift.git", from: "5.0.0-alpha.3"),
        .package(url: "https://github.com/apple/swift-log.git", from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "S3Test",
            dependencies: [
                "LambdaSwiftSprinterNioPlugin",
                .product(name: "AWSS3", package: "aws-sdk-swift"),
                "Logging"
            ]
        ),
        .testTarget(
            name: "S3TestTests",
            dependencies: ["S3Test"]
        ),
    ]
)
