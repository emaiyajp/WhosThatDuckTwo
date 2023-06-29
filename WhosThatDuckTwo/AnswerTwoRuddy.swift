//
//  AnswerTwoRuddy.swift
//  WhosThatDuckTwo
//
//  Created by Scholar on 6/29/23.
//

//Chnage image and Navigation Destination for "Next >"

import SwiftUI

struct AnswerTwoRuddy: View {
    
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        
        
        ZStack {
            (Color(red: 0.027450980392156862, green: 0.5607843137254902, blue: 0.43137254901960786))
                .ignoresSafeArea()
                .navigationBarBackButtonHidden(true)
            VStack {
                
                Text("Who's That Duck?")
                    .foregroundColor(Color.white)
                    .font (.custom("Unkempt-Bold", fixedSize: 30))
                    .padding(.top, 40.0)
                Spacer()
                
                Image("Mallard")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                Spacer()
                
                
                Text("This is a...")
                    .font (.custom("Unkempt-Bold", fixedSize: 25))
                    .foregroundColor(Color(hue: 0.142, saturation: 0.133, brightness: 0.913))
                    .padding(.top, 40.0)
                
                Text("Ruddy Duck")
                    .font (.custom("Unkempt-Bold", fixedSize: 35))
                    .foregroundColor(Color(hue: 0.142, saturation: 0.133, brightness: 0.913))
                    .padding(.bottom)
                
                Text("Also known as the Oxyura Jamaciesis that is about 13.5-17 inches wide, wighing about 1.23 pounds, with the windspan of 18.5 inches. They fully sumerge themselves when they go under water. ")
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .padding()
                
                NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                    Text("Next >")
                        .foregroundColor(Color.white)
                        .font (.custom("Unkempt-Bold", fixedSize: 25))
                        .multilineTextAlignment(.trailing)
                        .padding(.leading, 200.0)
                }
                .foregroundColor(Color.white)
                Spacer()
                    .padding()
            }
            .padding()
        }
    }
        
}

struct AnswerTwoRuddy_Previews: PreviewProvider {
    static var previews: some View {
        AnswerTwoRuddy()
    }
}
