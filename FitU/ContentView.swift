//
//  ContentView.swift
//  FitU
//
//  Created by Andrew Tran on 4/14/22.
//

import SwiftUI

extension Color {
    static let teal = Color(red: 49 / 255, green: 163 / 255, blue: 159 / 255)
    static let darkPink = Color(red: 208 / 255, green: 45 / 255, blue: 208 / 255)
    static let BackColor = Color("BackColor")
}

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
            VStack{
                
                Image("pic1")
                    .resizable()
                        .frame(width: 500, height: 500)
                        .offset(x: 0, y: -100)
                
                HStack{
                    Spacer()
                Text("Train Like A BEAST").font(.largeTitle)
                        .offset(y: -140)
                    Spacer()
                }
                Spacer()
                NavigationLink(destination: signUpView()){
                    Text("Sign up")
                        .frame(width: 140, height: 25)
                        .foregroundColor(.black)
                        .background(Color.BackColor)
                        .cornerRadius(100)
                        .overlay(
                        RoundedRectangle(cornerRadius: 100)
                        .stroke(Color.black, lineWidth: 1)
                        )
                }
                .padding(.bottom, 10 )
                NavigationLink(destination: logInView()){
                    Text("Log In")
                        .frame(width: 140, height: 25)
                        .foregroundColor(.black)
                        .cornerRadius(100)
                        .overlay(
                        RoundedRectangle(cornerRadius: 100)
                        .stroke(Color.black, lineWidth: 1)
                        )
                }
                .padding(.bottom, 20)
                Spacer()
        }
    }
}

struct signUpView: View{
    
    @State var show: Bool = false
    @StateObject var nameTest = signUpTest()
//    hold name, email, password
    @State var nameArray: [String] = []
    @State var emailArray: [String] = []
    @State var passwordArray: [String] = []
    
//    for Name TextField
    @State var nameTextField: String = ""
    
//    for Email TextField
    @State var emailTextField: String = ""
    
//    for Password TextField
    @State var passwordTextField: String = ""
    
    
    var body: some View{
        VStack{
            Spacer()
            Text("Sign Up").font(.largeTitle)
            Spacer()
            TextField("Name", text: $nameTextField)
                .padding(.leading, 10)
                .frame(width: 280, height: 50)
                .background(Color.BackColor
                                .opacity(0.4) // made back color more transparent w/transparent
                                .cornerRadius(100)) // rounded corner
                .foregroundColor(.black)
                .overlay(
                RoundedRectangle(cornerRadius: 100)
                .stroke(Color.black, lineWidth: 1)
                )
                .padding(.bottom)
            
            TextField("Email", text: $emailTextField)
                .padding(.leading, 10)
                .frame(width: 280, height: 50)
                .background(Color.BackColor
                                .opacity(0.4) // made back color more transparent w/transparent
                                .cornerRadius(100)) // rounded corner
                .foregroundColor(.black)
                .overlay(
                RoundedRectangle(cornerRadius: 100)
                .stroke(Color.black, lineWidth: 1)
                )
                .padding(.bottom)
            
            SecureField("Password", text: $passwordTextField)
                .padding(.leading, 10)
                .frame(width: 280, height: 50)
                .background(Color.BackColor
                                .opacity(0.4) // made back color more transparent w/transparent
                                .cornerRadius(100)) // rounded corner
                .foregroundColor(.black)
                .overlay(
                RoundedRectangle(cornerRadius: 100)
                .stroke(Color.black, lineWidth: 1)
                )
            
            Spacer()
            
//            NavigationLink(destination: testView(nameArray: self.$nameArray)){
//                Text("Next")
//            }
            
            
            
            
            
            NavigationLink(destination: testView().onAppear {
//                            self.saveAllFields()

                        }) {
                            Text("Next")
                            .frame(width: 140, height: 25)
                            .foregroundColor(.black)
                            .cornerRadius(100)
                            .overlay(
                            RoundedRectangle(cornerRadius: 100)
                            .stroke(Color.black, lineWidth: 1)
                            )
    }
            
            Button("Next 1"){
                nameTest.name[0] = nameTextField
            }
            
            
            ForEach(nameArray, id: \.self) { data in
                Text(data)
            }
            .environmentObject(nameTest)
        }
    }
    
    func saveAllFields() {
        nameArray.append(nameTextField)
        emailArray.append(emailTextField)
        passwordArray.append(passwordTextField)
//        nameTest.name.append(nameTextField)
    }
}
    
struct logInView: View{
        
    //    for Email TextField
        @State var emailTextField: String = ""
        
    //    for Password TextField
        @State var passwordTextField: String = ""
        
        
        var body: some View{
            VStack{
                Spacer()
                Text("Login").font(.largeTitle)
                Spacer()
                
                TextField("Email", text: $emailTextField)
                    .padding(.leading, 10)
                    .frame(width: 280, height: 50)
                    .background(Color.BackColor
                                    .opacity(0.4) // made back color more transparent w/transparent
                                    .cornerRadius(100)) // rounded corner
                    .foregroundColor(.black)
                    .overlay(
                    RoundedRectangle(cornerRadius: 100)
                    .stroke(Color.black, lineWidth: 1)
                    )
                    .padding(.bottom)
                
                SecureField("Password", text: $passwordTextField)
                    .padding(.leading, 10)
                    .frame(width: 280, height: 50)
                    .background(Color.BackColor
                                    .opacity(0.4) // made back color more transparent w/transparent
                                    .cornerRadius(100)) // rounded corner
                    .foregroundColor(.black)
                    .overlay(
                    RoundedRectangle(cornerRadius: 100)
                    .stroke(Color.black, lineWidth: 1)
                    )
                
                Spacer()
                
                Text("Next")
                    .frame(width: 140, height: 25)
                    .foregroundColor(.black)
                    .cornerRadius(100)
                    .overlay(
                    RoundedRectangle(cornerRadius: 100)
                    .stroke(Color.black, lineWidth: 1)
                    )
                
                Spacer()
                
            }
        }
}

struct testView: View{
    
    @EnvironmentObject var nameTest: signUpTest
    
    var body: some View{
        Text("\(nameTest.name[0])")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}

class signUpTest: ObservableObject{
    @Published var name: [String] = []
    
}
//take all the text field in sign up and send it to test view
