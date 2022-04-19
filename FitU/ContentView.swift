//
//  ContentView.swift
//  FitU
//
//  Created by Andrew Tran on 4/14/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            NavigationLink(destination: startView()) {
                ZStack {
                    Color("BackColor")
                        .contentShape(Rectangle())
                        .edgesIgnoringSafeArea(.all)
                        .navigationBarHidden(true)
                    VStack{
                            Image("Image-1")
                    Text("A workout program built by you")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

struct startView: View{
    var body: some View{
        NavigationView{
            VStack{
                
                Image("pic1")
                    .resizable()
                        .frame(width: 500, height: 500)
                        .padding(.bottom, 10)
                        .offset(x: 0, y: -200)
                Text("Train Like A BEAST")
                    .position(x:0, y: -100)
                NavigationLink(destination: signUpView()){
                    Text("Sign Up")
                }
                .padding(.bottom, 10 )
                NavigationLink(destination: logInView()){
                    Text("Log In")
                }
                .padding(.bottom, 20)
            }
        }
    }
}

struct signUpView: View{
    var body: some View{
        NavigationView{
            Text("SIGN UP")
        }
    }
}
    
struct logInView: View{
    var body: some View{
        NavigationView{
            Text("LOGGED IN")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        }
    }
