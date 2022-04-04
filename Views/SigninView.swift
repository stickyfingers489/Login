//
//  SigninView.swift
//  login
//
//  Created by stickerfinger489 on 04/04/2022.
//

import SwiftUI

struct SigninView: View {
    enum Field: Hashable{
        case email
        case password
    }
    @State var email = ""
    @State var password = ""
    @FocusState var focusedField: Field?
   // @State var circleY: CGFloat = 0
  //  @State var emailY: CGFloat = 0
   // @State var passwordY: CGFloat = 0
   // @State var circleColor: Color = .blue
    @State var appear = [false, false, false]
    //@EnvironmentObject var model: Model
    @AppStorage("isLogged") var isLogged = false

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Sign in")
                .font(.largeTitle).bold()
                .opacity(appear[0] ? 1 : 0)
                .offset(y: appear[0] ? 0 : 20)
            Text("Access 120+ hours of courses, tutorials and livestreams")
                .font(.headline)
                .opacity(appear[1] ? 1 : 0)
                .offset(y: appear[1] ? 0 : 20)
            
            Group {
                TextField("Email", text: $email)
                    .inputStyle(icon: "mail")
                    .textContentType(.emailAddress)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .focused($focusedField, equals: .email)
                    .shadow(color: focusedField == .email ? .primary.opacity(0.3) : .clear, radius: 10, x: 0, y: 3)
                    .overlay(geometry)
                  //  .onPreferenceChange(CirclePreferenceKey.self) { value in
                     //   emailY = value
                    //  circleY = value
                    }
                SecureField("Password", text: $password)
                    .inputStyle(icon: "lock")
                    .textContentType(.password)
                    .focused($focusedField, equals: .password)
                    .shadow(color: focusedField == .password ? .primary.opacity(0.3) : .clear, radius: 10, x: 0, y: 3)
                    .overlay(geometry)
                  //  .onPreferenceChange(CirclePreferenceKey.self) { value in
                      //  passwordY =  value
                    }
                Button {
                    isLogged = true
                } label: {
                    Text("Sign in")
                        .frame(maxWidth: .infinity)
                }
                .font(.headline)
                .blendMode(.overlay)
                .buttonStyle(.angular)
                .tint(.accentColor)
                .controlSize(.large)
                .shadow(color: Color("Shadow").opacity(0.2), radius: 30, x: 0, y: 30)
                
                Divider()
                
                HStack {
                    Text("No account yet?")
                   

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            SignInView()
               // .environmentObject(Model())
        }
    }
}
