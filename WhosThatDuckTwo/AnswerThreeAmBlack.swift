//
//  AnswerThreeAmBlack.swift
//  WhosThatDuckTwo
//
//  Created by Scholar on 6/29/23.
//

//FIX: IMAGE

import SwiftUI

struct AnswerThreeAmBlack: View {
    
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
                
                Image("")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                Spacer()
                
                
                Text("This is an...")
                    .font (.custom("Unkempt-Bold", fixedSize: 25))
                    .foregroundColor(Color(hue: 0.142, saturation: 0.133, brightness: 0.913))
                    .padding(.top, 40.0)
                
                Text("American Black Duck")
                    .font (.custom("Unkempt-Bold", fixedSize: 35))
                    .foregroundColor(Color(hue: 0.142, saturation: 0.133, brightness: 0.913))
                    .padding(.bottom)
                
                Text("Also known as Anas Rubripes that is about 21.3-23.2 inches wide, weighing about 25.4-57.9 ounces, with the singspan of 34.6-37.4 inches. They stick their tail in the air when they are under the water. ")
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .padding()
                
                NavigationLink(destination: QuestionTwoRuddy()) {
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
    struct AnswerThreeAmBlack_Previews: PreviewProvider {
        static var previews: some View {
            AnswerThreeAmBlack()
        }
    }
}
