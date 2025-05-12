//
//  SignUpView.swift
//  simple-todo-app
//
//  Created by Azamat Alimov on 5/9/25.
//

import SwiftUI

struct SignUpView: View {
    @StateObject var viewModel = SignUpViewModel()

    
    var body: some View {
        VStack{
            RotatedBackgroundHeaderView(
                title: "Sign Up",
                subtitle: "Start organizing todos",
                rotationDegree: -15,
                backgroundColor: .orange)
            VStack(alignment: .leading)
            {
                TextField("Full name", text: $viewModel.name)
                    .keyboardType(.default)
                    .autocorrectionDisabled()
                TextField("Email Address", text: $viewModel.email)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                SecureField("Password", text: $viewModel.password)
                    .keyboardType(.default)
                    .textInputAutocapitalization(.never)
                
                if !viewModel.errorText.isEmpty {
                    Text(viewModel.errorText)
                        .foregroundStyle(.red)
                        .font(.system(size: 14))
                }
                
                Button(action: viewModel.register)
                {
                    ZStack{
                        RoundedRectangle(cornerRadius:  10).foregroundStyle(.green)
                        Text("Create an account")
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
        }
    }
}

#Preview {
    SignUpView()
}
