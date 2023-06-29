//
//  QuestionTwoRuddy.swift
//  WhosThatDuckTwo
//
//  Created by Scholar on 6/29/23.
//

//Change image/silhouette

import SwiftUI

struct QuestionTwoRuddy: View {
    
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
                        
                        
                        Image("Mallard Silhouette")
                            .padding(.top, 60.0)
                            
                        Spacer()
                        
                        Text("This species of ducks are one of the most aggressive ducks even with its own species. They lack a constrasting color speclum.")
                            .font (.custom("Unkempt-Bold", fixedSize: 20))
                            .foregroundColor(Color.white)
                            .padding(.bottom, 15.0)
                       
                    
                        NavigationLink(destination: WrongTwo()) {
                            Text("Wood Duck")
                        }
                        .foregroundColor(Color(hue: 0.142, saturation: 0.133, brightness: 0.913))
                        .font (.custom("Unkempt-Bold", fixedSize: 30))
                    
                        
                        NavigationLink(destination: WrongTwo()) {
                            Text("American Black Duck")
                                .font (.custom("Unkempt-Bold", fixedSize: 30))
                                .fontWeight(.bold)
                                .foregroundColor(Color(hue: 0.142, saturation: 0.133, brightness: 0.913))
                                .padding()
                        }
                        
                        NavigationLink(destination: AnswerTwoRuddy()) {
                            Text("Ruddy Duck")
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

struct QuestionTwoRuddy_Previews: PreviewProvider {
    static var previews: some View {
        QuestionTwoRuddy()
    }
}
