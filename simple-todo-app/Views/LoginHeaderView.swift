//
//  LoginHeaderView.swift
//  simple-todo-app
//
//  Created by Azamat Alimov on 5/9/25.
//

import SwiftUI

struct LoginHeaderView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(.pink)
                .rotationEffect(Angle(degrees: 15))
            
            VStack{
                Text("TO DO List")
                    .foregroundStyle(.white)
                    .font(.system(size: 50))
                    .bold()
                
                Text("Get things done")
                    .font(.system(size: 30))
                    .foregroundStyle(.white)
            }.padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
        .offset(y: -100)

    }
}

#Preview {
    LoginHeaderView()
}
