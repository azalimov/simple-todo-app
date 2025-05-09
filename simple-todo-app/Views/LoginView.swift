//
//  LoginView.swift
//  simple-todo-app
//
//  Created by Azamat Alimov on 5/9/25.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack{
            LoginHeaderView()
            
            VStack{
                TextField("Email Address", text: $email)
                    .padding(.top, 15)
                SecureField("Password", text: $password)
                    .padding(.bottom, 15)
                
                Button(action: {
                    //TODO: Implement login logic
                })
                {
                    ZStack{
                        RoundedRectangle(cornerRadius:  10).foregroundStyle(.blue)
                        Text("Log in")
                            .foregroundStyle(.white)
                            .bold()
                    }
                }.frame(maxHeight: 40)

            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(.all, 20)
            .background(
                Rectangle()
                .foregroundStyle(.secondary.opacity(0.2))
                .cornerRadius(20)
               )
            .padding(.all,20)

            
            Spacer()
            VStack{
                Text("New around here?")
                NavigationLink("Create an accont", destination: SignUpView())
            }.padding(.bottom, 50)
        }
    }
}

#Preview {
    LoginView()
}
