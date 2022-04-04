//
//  AccountView.swift
//  login
//
//  Created by stickerfinger489 on 01/04/2022.
//

import SwiftUI

struct AccountView: View {
    @State var isDeleted = false
    
    var body: some View {
        NavigationView {
        List {
            profile
            
            menu
            
            links
            
            
        }
            .listStyle(.insetGrouped)
            .navigationTitle("Account")
        }
    }
    var profile: some View{
        VStack (spacing: 8){
           Image(systemName: "person.text.rectangle")
            .symbolVariant(.circle.fill)
            .font(.system(size: 32))
            .symbolRenderingMode(.multicolor)
            .foregroundStyle(.blue, .blue.opacity(0.3))
            .background(Circle().fill(.ultraThinMaterial))
            .background(
                Image(systemName:"hexagon")
                    .symbolVariant(.fill)
                    .foregroundColor(.blue)
                    .font(.system(size: 200))
                    .offset(x: -50, y: -100)
            )
            Text("Christian Hezina")
                .font(.title.weight(.semibold))
            HStack{
                Image(systemName: "location")
                    .imageScale(.large)
                Text("Canada")
                    .foregroundColor(.secondary)
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
        
    }
        var menu: some View {
            Section {
                NavigationLink { Text("Settings")} label:{
                    Label("Settings", systemImage: "gear")}
                NavigationLink { Text("Billing")} label:{
                Label("Billing", systemImage: "creditcard")}
            NavigationLink {ContentView()} label:{
                Label("Help",systemImage: "questionmark")}
            }
            .accentColor(.primary)
            .listRowSeparatorTint(.blue)
            .listRowSeparator(.hidden)
                      }
    var links: some View {
        Section {
            if !isDeleted {
        Link(destination: URL(string: "https://familiaressays.com")!) {
            HStack {
            Label("website", systemImage: "house")
                Spacer()
                Image(systemName: "link")
                    .foregroundColor(.secondary)
            }
        }
        .swipeActions(edge: .leading, allowsFullSwipe: true) {
            Button(action: { isDeleted = true}) { Label ("Delete", systemImage: "trash")}
            
        }
            }
    
        }
        
    }
}
struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
