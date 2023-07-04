//
//  InfoView.swift
//  Abdullah's Business Card
//
//  Created by Abdullah Ihsan on 03/07/2023.
//
 
import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(.white)
         
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text(text)
                        .font(.system(size: 20))
                        .foregroundColor(Color("Info-Color"))
                    
                })
            .frame(height: 60)
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
