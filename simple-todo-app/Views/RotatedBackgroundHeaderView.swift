//
//  LoginHeaderView.swift
//  simple-todo-app
//
//  Created by Azamat Alimov on 5/9/25.
//

import SwiftUI

struct RotatedBackgroundHeaderView: View {
    let title: String
    let subtitle: String
    let rotationDegree: Double
    let backgroundColor: Color
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(backgroundColor)
                .rotationEffect(Angle(degrees: rotationDegree))
            
            VStack{
                Text(title)
                    .foregroundStyle(.white)
                    .font(.system(size: 50))
                    .bold()
                
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundStyle(.white)
            }.padding(.top, 80)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -150)

    }
}

#Preview {
    RotatedBackgroundHeaderView(
        title: "Title",
        subtitle: "Subtitle",
        rotationDegree: 15,
        backgroundColor:  .pink
    )
}
