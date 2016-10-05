//
//  {{ cookiecutter.name }}Spec.swift
//  {{ cookiecutter.name }}
//
//  Created by {{ cookiecutter.full_name }} on 04/10/16.
//  Copyright © 2016 {{ cookiecutter.organization_name }}. All rights reserved.
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
