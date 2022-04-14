//
//  FeaturedItem.swift
//  login
//
//  Created by stickerfinger489 on 03/04/2022.
//

import SwiftUI

struct FeaturedItem: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            Spacer()
            Image("Logo 2")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 26.0, height: 26.0 )
                .padding(9)
                .background(.ultraThinMaterial, in:RoundedRectangle(cornerRadius: 16, style:.continuous))
                .strokeStyle(cornerRadius: 16)
             Text("Welcome  to Familiar Essays")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            Text("The Most affordable Essay Writing Service")
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(.secondary)
                .foregroundStyle(.linearGradient(colors: [.primary, .primary.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))

            Text("plagiarism is strictly forbiden")
                .font(.footnote)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(minWidth: .infinity,  alignment: .leading)
                .foregroundColor(.secondary)
        }
        .padding(.all, 20.0)
        .padding(.vertical, 20)
        .frame(height:350)
        .background(.ultraThinMaterial)
        .cornerRadius(30.0)
        .shadow(radius: 20)
        .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0, y: 10)
        .strokeStyle()
        .padding(.horizontal, 20)
        .background(Image("Blob 1")
                        .offset(x: 250, y: -100))
        .overlay(Image("Illustration 5")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 230)
                    .offset(x:32, y:-80)
        )
    }
}

struct FeaturedItem_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItem()
    }
}
