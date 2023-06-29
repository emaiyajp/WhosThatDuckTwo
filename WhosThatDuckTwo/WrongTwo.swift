//
//  WrongTwo.swift
//  WhosThatDuckTwo
//
//  Created by Scholar on 6/29/23.
//

import SwiftUI

struct WrongTwo: View {
    var body: some View {
        
        NavigationStack {
           
            ZStack {
                
                (Color(red: 0.027450980392156862, green: 0.5607843137254902, blue: 0.43137254901960786))
                    .ignoresSafeArea()
                    .navigationBarBackButtonHidden(true)
                VStack {
                    
                    Text("Who's That Duck?")
                        .foregroundColor(Color.white)
                        .font (.custom("Unkempt-Bold", fixedSize: 30))
                        .padding(.top, 70.0)
                    Spacer()
                    
                    Text("WRONG!")
                        .font (.custom("Unkempt-Bold", fixedSize: 60))
                        .foregroundColor(Color(hue: 0.142, saturation: 0.133, brightness: 0.913))
                        .padding(.top, 250.0)
                        .padding(.bottom)
                    Spacer()
                    
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        Text("Next >")
                            .foregroundColor(Color.white)
                            .font (.custom("Unkempt-Bold", fixedSize: 25))
                            .multilineTextAlignment(.trailing)
                            .padding(.leading, 200.0)
                            .padding(.top, 300.0)
                    }
                    .foregroundColor(Color.white)
                    Spacer()
                        .padding()
                    
                }
                
                
            }
            
        }
    }
    
}
    


struct WrongTwo_Previews: PreviewProvider {
    static var previews: some View {
        WrongTwo()
    }
}
