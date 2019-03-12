// swift-tools-version:4.2
//
//  {{ cookiecutter.name }}.swift
//  {{ cookiecutter.name }}
//
//  Created by {{ cookiecutter.full_name }} on 23/10/15.
//  Copyright © 2017 {{ cookiecutter.github_name }}. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "{{ cookiecutter.name }}",
    products: [
        .library(
            name: "{{ cookiecutter.name }}",
            targets: ["{{ cookiecutter.name }}"]),
        ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "{{ cookiecutter.name }}",
            dependencies: [],
            path: "Sources"),
        .testTarget(
            name: "{{ cookiecutter.name }}Tests",
            dependencies: ["{{ cookiecutter.name }}"],
            path: "Tests")
    ],
    swiftLanguageVersions: [.v4, .v4_2]
)
