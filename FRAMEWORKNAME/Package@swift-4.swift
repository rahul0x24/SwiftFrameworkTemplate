// swift-tools-version:4.0
//
//  FRAMEWORKNAME.swift
//  FRAMEWORKNAME
//
//  Created by FRAMEWORKFULLNAME on 01/04/19.
//  Copyright © 2019 FRAMEWORKGITHUBNAME. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "FRAMEWORKNAME",
    products: [
        .library(
            name: "FRAMEWORKNAME",
            targets: ["FRAMEWORKNAME"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "FRAMEWORKNAME",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "FRAMEWORKNAMETests",
            dependencies: ["FRAMEWORKNAME"],
            path: "Tests"
        ),
    ],
    swiftLanguageVersions: [4]
)
