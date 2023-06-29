//
//  QuestionOneMallard.swift
//  WhosThatDuckTwo
//
//  Created by Scholar on 6/29/23.
//

// NEED TO FIX: Spacing on info about MALLARD DUCK (it keeps getting cut off); Add navigation link to next silhouette by wrong answers;

import SwiftUI

struct QuestionOneMallard: View {
    
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
                    
                    Text("This is a common ancestor to almost every domestic breed of duck.")
                        .font (.custom("Unkempt-Bold", fixedSize: 20))
                        .foregroundColor(Color.white)
                        .padding(.bottom, 15.0)
                   
                
                    NavigationLink(destination: Wrong()) {
                        Text("Ruddy Duck")
                    }
                    .foregroundColor(Color(hue: 0.142, saturation: 0.133, brightness: 0.913))
                    .font (.custom("Unkempt-Bold", fixedSize: 30))
                
                    
                    NavigationLink(destination: AnswerOneMallard()) {
                        Text("Mallard Duck")
                            .font (.custom("Unkempt-Bold", fixedSize: 30))
                            .fontWeight(.bold)
                            .foregroundColor(Color(hue: 0.142, saturation: 0.133, brightness: 0.913))
                            .padding()
                    }
                    
                    NavigationLink(destination: Wrong()) {
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

struct QuestionOneMallard_Previews: PreviewProvider {
    static var previews: some View {
        QuestionOneMallard()
    }
}
