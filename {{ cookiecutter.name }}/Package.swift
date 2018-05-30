// swift-tools-version:4.1
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
    dependencies: [],
    targets: [
        .target(
            name: "{{ cookiecutter.name }}",
            dependencies: [],
            path: "Sources"),
        .testTarget(
            name: "{{ cookiecutter.name }}Tests",
            dependencies: ["{{ cookiecutter.name }}"],
            path: "Tests")
    ]
)
