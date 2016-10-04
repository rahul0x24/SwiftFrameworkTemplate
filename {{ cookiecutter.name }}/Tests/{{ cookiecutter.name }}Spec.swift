//
//  {{ cookiecutter.name }}Spec.swift
//  {{ cookiecutter.name }}
//
//  Created by Rahul Katariya on 04/10/16.
//  Copyright © 2016 Rahul Katariya. All rights reserved.
//

import Quick
import Nimble
@testable import {{ cookiecutter.name }}

class {{ cookiecutter.name }}Spec: QuickSpec {

    override func spec() {

        describe("{{ cookiecutter.name }}Spec") {
            it("works") {
                expect("{{ cookiecutter.name }}") == "{{ cookiecutter.name }}"
            }
        }

    }

}
