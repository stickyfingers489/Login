//
//  TextModifiers.swift
//  login
//
//  Created by stickerfinger489 on 03/04/2022.
//

import SwiftUI


import SwiftUI

struct SectionTitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.footnote.weight(.semibold))
            .foregroundColor(.secondary)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(20)
    }
}

extension View {
    func sectionTitleModifier() -> some View {
        modifier(SectionTitleModifier())
    }
}
