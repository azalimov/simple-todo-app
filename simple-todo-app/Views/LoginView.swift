//
//  LoginView.swift
//  simple-todo-app
//
//  Created by Azamat Alimov on 5/9/25.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                RotatedBackgroundHeaderView(
                    title: "TO DO List",
                    subtitle: "Get things done",
                    rotationDegree: 15,
                    backgroundColor: .pink
                )
                VStack(
                    alignment: .leading,
                    spacing: 0
                ) {
                    TextField("Email Address", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                    SecureField("Password", text: $viewModel.password)
                        .keyboardType(.default)
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.never)
                    
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundStyle(.red)
                            .font(.system(size: 14))
                        
                    }
                    
                    Button(action: viewModel.login)
                    {
                        ZStack{
                            RoundedRectangle(cornerRadius:  10)
                                .foregroundStyle(.blue)
                            Text("Log in")
                                .foregroundStyle(.white)
                                .bold()
                        }
                    }
                    .frame(maxHeight: 40)
                    .padding(.top, 15)
                    
                    
                }
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.all, 20)
                .background(
                    Rectangle()
                        .foregroundStyle(.secondary.opacity(0.2))
                        .cornerRadius(20)
                )
                .padding(.all,20)
                .offset(y: -50)
                
                
                Spacer()
                VStack{
                    Text("New around here?")
                    NavigationLink("Create an account", destination: SignUpView())
                }.padding(.bottom, 50)
            }
        }
    }
}

#Preview {
    LoginView()
}
