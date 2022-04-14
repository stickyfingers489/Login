//
//  Sidebar.swift
//  login
//
//  Created by stickerfinger489 on 03/04/2022.
//

import SwiftUI

struct Sidebar: View {
    var body: some View {
        NavigationView {
            List {
                Label("Learn Now", systemImage: "house")
                Label("Courses", systemImage: "square.grid.2x2")
                Label("Livestreams", systemImage: "tv")
            }
            .listStyle(.sidebar)
            .navigationTitle("Familiar Essays")
        }
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
    }
}
