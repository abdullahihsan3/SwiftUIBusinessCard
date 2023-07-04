//
//  ContentView.swift
//  Abdullah's Business Card
//
//  Created by Abdullah Ihsan on 03/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52,opacity: 1.0)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("picture")
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width: 350,height: 350)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white,lineWidth: 5))
                Text("Abdullah Ihsan")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                 
                InfoView(text: "+92(323)5281439", imageName: "phone.fill")
                InfoView(text: "abdullah.ihsan3@gmail.com", imageName: "envelope.fill")
                  
                
               
                

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider { 
    static var previews: some View {
        ContentView()
    }
}

