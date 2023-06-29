//
//  QuestionThreeAmBlack.swift
//  WhosThatDuckTwo
//
//  Created by Scholar on 6/29/23.
//
//FIX: SILHOUETTE

import SwiftUI

struct QuestionThreeAmBlack: View {
    
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>

    
    var body: some View {
        
    
     
            
            ZStack {
                (Color(red: 0.027450980392156862, green: 0.5607843137254902, blue: 0.43137254901960786))
                    .ignoresSafeArea()
                
                VStack {
                    
                    
                    Text("Who's That Duck?")
                        .foregroundColor(Color.white)
                        .font (.custom("Unkempt-Bold", fixedSize: 30))
                        .padding(.top,20.0)
                    Spacer()
                    
                    
                    Image("")
                        .padding(.top, 60.0)
                        
                    Spacer()
                    
                    Text("This species of duck is almost exclusively found in the eastern half of North America. And contains a purple- blue speculum.")
                        .font (.custom("Unkempt-Bold", fixedSize: 20))
                        .foregroundColor(Color.white)
                        .padding(.bottom, 15.0)
                   
                
                    NavigationLink(destination: Wrong()) {
                        Text("Wood Duck")
                    }
                    .foregroundColor(Color(hue: 0.142, saturation: 0.133, brightness: 0.913))
                    .font (.custom("Unkempt-Bold", fixedSize: 30))
                
                    
                    NavigationLink(destination: Wrong()) {
                        Text("Ruddy Duck")
                            .font (.custom("Unkempt-Bold", fixedSize: 30))
                            .fontWeight(.bold)
                            .foregroundColor(Color(hue: 0.142, saturation: 0.133, brightness: 0.913))
                            .padding()
                    }
                    
                    NavigationLink(destination: AnswerThreeAmBlack()) {
                        Text("American Black Duck")
                    }
                    .foregroundColor(Color(hue: 0.142, saturation: 0.133, brightness: 0.913))
                    .font (.custom("Unkempt-Bold", fixedSize: 30))
                    
                }
                Spacer()
                    .padding(40.0)
                    
            }
        //back navigation
            .navigationBarBackButtonHidden(true)
            .toolbar(content: {
                ToolbarItem (placement:
                        .navigationBarLeading) {
                            Button(action: {
                                presentationMode.wrappedValue .dismiss()
                                
                            }, label: {
                                Text("< Home")
                                    .font (.custom("Unkempt-Bold", fixedSize: 20))
                                    .foregroundColor(Color.white)
                                
                            })
                        }
            })
        //back navigation
        
        
            
    }
}
struct QuestionThreeAmBlack_Previews: PreviewProvider {
    static var previews: some View {
        QuestionThreeAmBlack()
    }
}
