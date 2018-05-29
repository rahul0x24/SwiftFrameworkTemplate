// swift-tools-version:4.1
//
//  FRAMEWORKNAME.swift
//  FRAMEWORKNAME
//
//  Created by FRAMEWORKFULLNAME on 23/10/15.
//  Copyright © 2017 FRAMEWORKGITHUBNAME. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "FRAMEWORKNAME",
    products: [
        .library(
            name: "FRAMEWORKNAME",
            targets: ["FRAMEWORKNAME"]),
        ],
    dependencies: [],
    targets: [
        .target(
            name: "FRAMEWORKNAME",
            dependencies: [],
            path: "Sources"),
        .testTarget(
            name: "FRAMEWORKNAMETests",
            dependencies: ["FRAMEWORKNAME"],
            path: "Tests")
    ]
)
