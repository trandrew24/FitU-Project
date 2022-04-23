//
//  ContentView.swift
//  FitU
//
//  Created by Andrew Tran on 4/14/22.
//

import SwiftUI
import AVKit

extension Color {
    static let teal = Color(red: 49 / 255, green: 163 / 255, blue: 159 / 255)
    static let darkPink = Color(red: 208 / 255, green: 45 / 255, blue: 208 / 255)
    static let BackColor = Color("BackColor")
}

struct welcomeView: View{
    
    @State var showView: Int = 1
    @Binding var nameArray: [String]
    @Binding var emailArray: [String]
    @Binding var passwordArray: [String]
    
    var body: some View{
        ZStack(alignment: .bottom){
            VStack{

                Text("Welcome to FitU").font(.largeTitle)
                Text(nameArray[0]).font(.largeTitle)
                Spacer()
            }
            
//          QUESTIONNAIRE 1
            if showView == 1 {
                RoundedRectangle(cornerRadius: 30)
                .frame(height: UIScreen.main.bounds.height * 0.67)
                .transition(.move(edge: .bottom))
                .foregroundColor(Color.BackColor)
                .opacity(0.5)
                .animation(.spring())
                VStack{
                    Spacer()
                    Text("Questionnaire").bold()
                        .padding(.top, 90)
                    Text("1/3")
                        .padding()
                    Text("What are you focused on?")
                        .padding(.bottom, 90)
                    Button(action: {
                        showView += 1
                    }) {
                        Text("Weight Maintenance")
                            .frame(width: 250, height: 35)
                            .foregroundColor(.black)
                            .background(Color.BackColor.opacity(1.0))
                            .cornerRadius(100)
                            .overlay(
                            RoundedRectangle(cornerRadius: 100)
                            .stroke(Color.black, lineWidth: 1)
                            )
                            .padding()
                    }
                    Button(action: {
                        showView += 1
                    }) {
                        Text("Losing Weight")
                            .frame(width: 250, height: 35)
                            .foregroundColor(.black)
                            .background(Color.BackColor.opacity(1.0))
                            .cornerRadius(100)
                            .overlay(
                            RoundedRectangle(cornerRadius: 100)
                            .stroke(Color.black, lineWidth: 1)
                            )
                            .padding()
                    }
                    
                    Button(action: {
                        showView += 1
                    }) {
                        Text("Building Muscle")
                            .frame(width: 250, height: 35)
                            .foregroundColor(.black)
                            .background(Color.BackColor.opacity(1.0))
                            .cornerRadius(100)
                            .overlay(
                            RoundedRectangle(cornerRadius: 100)
                            .stroke(Color.black, lineWidth: 1)
                            )
                            .padding()
                    }
                    Spacer()
                }
            }
            
//            QUESTIONNAIRE 2
            else if showView == 2 {
                RoundedRectangle(cornerRadius: 30)
                .frame(height: UIScreen.main.bounds.height * 0.67)
                .transition(.move(edge: .bottom))
                .foregroundColor(Color.BackColor)
                .opacity(0.5)
                .animation(.spring())
                VStack{
                    Spacer()
                    Text("Questionnaire").bold()
                        .padding(.top, 90)
                    Text("2/3")
                        .padding()
                    Text("What is your gender?")
                        .padding(.bottom, 90)
                    Button(action: {
                        showView += 1
                    }) {
                        Text("Male")
                            .frame(width: 250, height: 35)
                            .foregroundColor(.black)
                            .background(Color.BackColor.opacity(1.0))
                            .cornerRadius(100)
                            .overlay(
                            RoundedRectangle(cornerRadius: 100)
                            .stroke(Color.black, lineWidth: 1)
                            )
                            .padding()
                    }
                    Button(action: {
                        showView += 2
                    }) {
                        Text("Female")
                            .frame(width: 250, height: 35)
                            .foregroundColor(.black)
                            .background(Color.BackColor.opacity(1.0))
                            .cornerRadius(100)
                            .overlay(
                            RoundedRectangle(cornerRadius: 100)
                            .stroke(Color.black, lineWidth: 1)
                            )
                            .padding()
                    }
                    Spacer()
                }
            }
            
            
            //QUESTIONARE for male 3
            
            else if showView == 3 {
                RoundedRectangle(cornerRadius: 30)
                .frame(height: UIScreen.main.bounds.height * 0.67)
                .transition(.move(edge: .bottom))
                .foregroundColor(Color.BackColor)
                .opacity(0.7)
                .animation(.spring())
                VStack{
                    Spacer()
                    Text("Questionnaire").bold()
                        .padding(.top, 90)
                    Text("3/3")
                        .padding()
                    Text("How many days do you want to work out?")
                        .padding(.bottom, 90)
                    
                    NavigationLink(destination: male1()){
                        Text("1 day")
                            .frame(width: 250, height: 35)
                            .foregroundColor(.black)
                            .background(Color.BackColor.opacity(1.0))
                            .cornerRadius(100)
                            .overlay(
                            RoundedRectangle(cornerRadius: 100)
                            .stroke(Color.black, lineWidth: 1)
                            )
                            .padding()
                    }
                    
                    NavigationLink(destination: male2()){
                        Text("2 day")
                            .frame(width: 250, height: 35)
                            .foregroundColor(.black)
                            .background(Color.BackColor.opacity(1.0))
                            .cornerRadius(100)
                            .overlay(
                            RoundedRectangle(cornerRadius: 100)
                            .stroke(Color.black, lineWidth: 1)
                            )
                            .padding()
                    }
                    
                    NavigationLink(destination: male3()){
                        Text("3 day")
                            .frame(width: 250, height: 35)
                            .foregroundColor(.black)
                            .background(Color.BackColor.opacity(1.0))
                            .cornerRadius(100)
                            .overlay(
                            RoundedRectangle(cornerRadius: 100)
                            .stroke(Color.black, lineWidth: 1)
                            )
                            .padding()
                    }
                    
                    Spacer()
                }
            }
            
            //QUESTIONAIRE FOR FEMAL
            else if showView == 4 {
                RoundedRectangle(cornerRadius: 30)
                .frame(height: UIScreen.main.bounds.height * 0.67)
                .transition(.move(edge: .bottom))
                .foregroundColor(Color.BackColor)
                .opacity(0.7)
                .animation(.spring())
                VStack{
                    Spacer()
                    Text("Questionnaire").bold()
                        .padding(.top, 90)
                    Text("3/3")
                        .padding()
                    Text("How many days do you want to work out?")
                        .padding(.bottom, 90)
                    
                    NavigationLink(destination: fmale1()){
                        Text("1 day")
                            .frame(width: 250, height: 35)
                            .foregroundColor(.black)
                            .background(Color.BackColor.opacity(1.0))
                            .cornerRadius(100)
                            .overlay(
                            RoundedRectangle(cornerRadius: 100)
                            .stroke(Color.black, lineWidth: 1)
                            )
                            .padding()
                    }
                    

                    NavigationLink(destination: fmale2()){
                        Text("2 day")
                            .frame(width: 250, height: 35)
                            .foregroundColor(.black)
                            .background(Color.BackColor.opacity(1.0))
                            .cornerRadius(100)
                            .overlay(
                            RoundedRectangle(cornerRadius: 100)
                            .stroke(Color.black, lineWidth: 1)
                            )
                            .padding()
                    }
                    
                    NavigationLink(destination: fmale3()){
                        Text("3 day")
                            .frame(width: 250, height: 35)
                            .foregroundColor(.black)
                            .background(Color.BackColor.opacity(1.0))
                            .cornerRadius(100)
                            .overlay(
                            RoundedRectangle(cornerRadius: 100)
                            .stroke(Color.black, lineWidth: 1)
                            )
                            .padding()
                    }
                    
                    Spacer()
                }
            }

        }
        .edgesIgnoringSafeArea(.bottom)
    }
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
                        .offset(y: -100)
                    Spacer()
                }
                Spacer()
                NavigationLink(destination: signUpView()){
                    Text("Lets get started!")
                        .frame(width: 175, height: 25)
                        .foregroundColor(.black)
                        .background(Color.BackColor)
                        .cornerRadius(100)
                        .overlay(
                        RoundedRectangle(cornerRadius: 100)
                        .stroke(Color.black, lineWidth: 1)
                        )
                }
                .padding(.bottom, 10 )
                Spacer()
        }
    }
}

struct signUpView: View{
    
    @State var show: Bool = false
    @AppStorage("email array") var savedEmail = " "
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
            Text("Lets get to know you").font(.largeTitle)
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
            
            TextField("Optional: Email", text: $emailTextField)
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
            
            TextField("Optional: Phone", text: $passwordTextField)
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
            
            Button("Save My Info"){
//                nameArray.append(nameTextField)
                self.saveAllFields()
            }
            NavigationLink(destination: welcomeView(nameArray: self.$nameArray, emailArray: self.$emailArray, passwordArray: self.$passwordArray), isActive: self.$show) {
                Text("Next")
//                    .onTapGesture {
//                        self.saveAllFields()
//                    }
                .frame(width: 140, height: 25)
                .foregroundColor(.black)
                .cornerRadius(100)
                .overlay(
                RoundedRectangle(cornerRadius: 100)
                .stroke(Color.black, lineWidth: 1)
                )
            }

            
            
        }
    }
    
    func saveAllFields() {
        nameArray.append(nameTextField)
        emailArray.append(emailTextField)
        passwordArray.append(passwordTextField)
        self.savedEmail = emailTextField
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

//come back to i

struct male1: View{
    @State var showView: Int = 1
    
    var body: some View{
        if showView == 1 {
        ZStack{
            Color("BackColor")
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
                .opacity(0.5)
            VStack(spacing: 50){
        Text("Lets Get Started!")
        HStack{
            Spacer()
            Button(action:{
                showView = 1
            }) {
                Text("Day 1")
                    .foregroundColor(Color.black)
            }
            Spacer()
                    }
                NavigationLink(destination: maleWorkout1()){
                    ZStack{
                    Image("pic3")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(100)
                        Text("Workouts")
                            .foregroundColor(Color.black)
                            .bold()
                    }
                }
                NavigationLink(destination: testRealm()){
                    ZStack{
                    Image("Howto")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(100)
                        Text("How to")
                            .foregroundColor(Color.black)
                            .bold()
                        }
                    }
                Spacer()
                }
            }
        }

    }
}


struct male2: View{
    @State var showView: Int = 1
    
    var body: some View{
        if showView == 1 {
        ZStack{
            Color("BackColor")
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
                .opacity(0.5)
            VStack(spacing: 50){
        Text("Lets Get Started!")
        HStack{
            Spacer()
            Button(action:{
                showView = 1
            }) {
                Text("Day 1")
                    .foregroundColor(Color.black)
            }
            Spacer()
            Button(action:{
                showView = 2
            }) {
                Text("Day 2")
            }
            Spacer()
                    }
                NavigationLink(destination: maleWorkout1()){
                    ZStack{
                    Image("pic3")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(100)
                        Text("Workouts")
                            .foregroundColor(Color.black)
                            .bold()
                    }
                }
                NavigationLink(destination: testRealm()){
                    ZStack{
                    Image("Howto")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(100)
                        Text("How to")
                            .foregroundColor(Color.black)
                            .bold()
                        }
                    }
                Spacer()
                }
            }
        }
        
        if showView == 2 {
        ZStack{
            Color("BackColor")
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
                .opacity(0.5)
            VStack(spacing: 50){
        Text("Lets Get Started!")
        HStack{
            Spacer()
            Button(action:{
                showView = 1
            }) {
                Text("Day 1")
            }
            Spacer()
            Button(action:{
                showView = 2
            }) {
                Text("Day 2")
                    .foregroundColor(Color.black)
            }
            Spacer()
                    }
                NavigationLink(destination: maleWorkout2()){
                    ZStack{
                    Image("pic3")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(100)
                        Text("Workouts")
                            .foregroundColor(Color.black)
                            .bold()
                    }
                }
                NavigationLink(destination: testRealm()){
                    ZStack{
                    Image("Howto")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(100)
                        Text("How to")
                            .foregroundColor(Color.black)
                            .bold()
                        }
                    }
                Spacer()
                }
            }
        }
    }
}

struct male3: View{
    @State var showView: Int = 1
    
    var body: some View{
        if showView == 1 {
        ZStack{
            Color("BackColor")
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
                .opacity(0.5)
            VStack(spacing: 50){
        Text("Lets Get Started!")
        HStack{
            Spacer()
            Button(action:{
                showView = 1
            }) {
                Text("Day 1")
                    .foregroundColor(Color.black)
            }
            Spacer()
            Button(action:{
                showView = 2
            }) {
                Text("Day 2")
            }
            Spacer()
            Button(action:{
                showView = 3
            }) {
                Text("Day 3")
                        }
            Spacer()
                    }
                NavigationLink(destination: maleWorkout1()){
                    ZStack{
                    Image("pic3")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(100)
                        Text("Workouts")
                            .foregroundColor(Color.black)
                            .bold()
                    }
                }
                NavigationLink(destination: testRealm()){
                    ZStack{
                    Image("Howto")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(100)
                        Text("How to")
                            .foregroundColor(Color.black)
                            .bold()
                        }
                    }
                Spacer()
                }
            }
        }
        
        if showView == 2 {
        ZStack{
            Color("BackColor")
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
                .opacity(0.5)
            VStack(spacing: 50){
        Text("Lets Get Started!")
        HStack{
            Spacer()
            Button(action:{
                showView = 1
            }) {
                Text("Day 1")
            }
            Spacer()
            Button(action:{
                showView = 2
            }) {
                Text("Day 2")
                    .foregroundColor(Color.black)
            }
            Spacer()
            Button(action:{
                showView = 3
            }) {
                Text("Day 3")
                        }
            Spacer()
                    }
                NavigationLink(destination: maleWorkout2()){
                    ZStack{
                    Image("pic3")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(100)
                        Text("Workouts")
                            .foregroundColor(Color.black)
                            .bold()
                    }
                }
                NavigationLink(destination: testRealm()){
                    ZStack{
                    Image("Howto")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(100)
                        Text("How to")
                            .foregroundColor(Color.black)
                            .bold()
                        }
                    }
                Spacer()
                }
            }
        }
        
        if showView == 3 {
        ZStack{
            Color("BackColor")
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
                .opacity(0.5)
            VStack(spacing: 50){
        Text("Lets Get Started!")
        HStack{
            Spacer()
            Button(action:{
                showView = 1
            }) {
                Text("Day 1")
            }
            Spacer()
            Button(action:{
                showView = 2
            }) {
                Text("Day 2")
            }
            Spacer()
            Button(action:{
                showView = 3
            }) {
                Text("Day 3")
                    .foregroundColor(Color.black)
                        }
            Spacer()
                    }
                NavigationLink(destination: maleWorkout3()){
                    ZStack{
                    Image("pic3")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(100)
                        Text("Workouts")
                            .foregroundColor(Color.black)
                            .bold()
                    }
                }
                NavigationLink(destination: testRealm()){
                    ZStack{
                    Image("Howto")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(100)
                        Text("How to")
                            .foregroundColor(Color.black)
                            .bold()
                        }
                    }
                Spacer()
                }
            }
        }
    }
}

//____________________

struct fmale1: View{
    @State var showView: Int = 1
    
    var body: some View{
        if showView == 1 {
        ZStack{
            Color("BackColor")
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
                .opacity(0.5)
            VStack(spacing: 50){
        Text("Lets Get Started!")
        HStack{
            Spacer()
            Button(action:{
                showView = 1
            }) {
                Text("Day 1")
                    .foregroundColor(Color.black)
            }
            Spacer()
                    }
                NavigationLink(destination: femWorkout1()){
                    ZStack{
                    Image("pic3")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(100)
                        Text("Workouts")
                            .foregroundColor(Color.black)
                            .bold()
                    }
                }
                NavigationLink(destination: testRealm1()){
                    ZStack{
                    Image("Howto")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(100)
                        Text("How to")
                            .foregroundColor(Color.black)
                            .bold()
                        }
                    }
                Spacer()
                }
            }
        }

    }
}
//_____________________________________________
struct fmale2: View{
    @State var showView: Int = 1
    
    var body: some View{
        if showView == 1 {
        ZStack{
            Color("BackColor")
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
                .opacity(0.5)
            VStack(spacing: 50){
        Text("Lets Get Started!")
        HStack{
            Spacer()
            Button(action:{
                showView = 1
            }) {
                Text("Day 1")
                    .foregroundColor(Color.black)
            }
            Spacer()
            Button(action:{
                showView = 2
            }) {
                Text("Day 2")
            }
            Spacer()
                    }
                NavigationLink(destination: femWorkout1()){
                    ZStack{
                    Image("pic3")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(100)
                        Text("Workouts")
                            .foregroundColor(Color.black)
                            .bold()
                    }
                }
                NavigationLink(destination: testRealm1()){
                    ZStack{
                    Image("Howto")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(100)
                        Text("How to")
                            .foregroundColor(Color.black)
                            .bold()
                        }
                    }
                Spacer()
                }
            }
        }
        
        if showView == 2 {
        ZStack{
            Color("BackColor")
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
                .opacity(0.5)
            VStack(spacing: 50){
        Text("Lets Get Started!")
        HStack{
            Spacer()
            Button(action:{
                showView = 1
            }) {
                Text("Day 1")
            }
            Spacer()
            Button(action:{
                showView = 2
            }) {
                Text("Day 2")
                    .foregroundColor(Color.black)
            }
            Spacer()
                    }
                NavigationLink(destination: femWorkout2()){
                    ZStack{
                    Image("pic3")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(100)
                        Text("Workouts")
                            .foregroundColor(Color.black)
                            .bold()
                    }
                }
                NavigationLink(destination: testRealm1()){
                    ZStack{
                    Image("Howto")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(100)
                        Text("How to")
                            .foregroundColor(Color.black)
                            .bold()
                        }
                    }
                Spacer()
                }
            }
        }
    }
}


//_______________________________________

struct fmale3: View{
    @State var showView: Int = 1
    
    var body: some View{
        if showView == 1 {
        ZStack{
            Color("BackColor")
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
                .opacity(0.5)
            VStack(spacing: 50){
        Text("Lets Get Started!")
        HStack{
            Spacer()
            Button(action:{
                showView = 1
            }) {
                Text("Day 1")
                    .foregroundColor(Color.black)
            }
            Spacer()
            Button(action:{
                showView = 2
            }) {
                Text("Day 2")
            }
            Spacer()
            Button(action:{
                showView = 3
            }) {
                Text("Day 3")
                        }
            Spacer()
                    }
                NavigationLink(destination: femWorkout1()){
                    ZStack{
                    Image("pic3")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(100)
                        Text("Workouts")
                            .foregroundColor(Color.black)
                            .bold()
                    }
                }
                NavigationLink(destination: testRealm1()){
                    ZStack{
                    Image("Howto")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(100)
                        Text("How to")
                            .foregroundColor(Color.black)
                            .bold()
                        }
                    }
                Spacer()
                }
            }
        }
        
        if showView == 2 {
        ZStack{
            Color("BackColor")
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
                .opacity(0.5)
            VStack(spacing: 50){
        Text("Lets Get Started!")
        HStack{
            Spacer()
            Button(action:{
                showView = 1
            }) {
                Text("Day 1")
            }
            Spacer()
            Button(action:{
                showView = 2
            }) {
                Text("Day 2")
                    .foregroundColor(Color.black)
            }
            Spacer()
            Button(action:{
                showView = 3
            }) {
                Text("Day 3")
                        }
            Spacer()
                    }
                NavigationLink(destination: femWorkout2()){
                    ZStack{
                    Image("pic3")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(100)
                        Text("Workouts")
                            .foregroundColor(Color.black)
                            .bold()
                    }
                }
                NavigationLink(destination: testRealm1()){
                    ZStack{
                    Image("Howto")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(100)
                        Text("How to")
                            .foregroundColor(Color.black)
                            .bold()
                        }
                    }
                Spacer()
                }
            }
        }
        
        if showView == 3 {
        ZStack{
            Color("BackColor")
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
                .opacity(0.5)
            VStack(spacing: 50){
        Text("Lets Get Started!")
        HStack{
            Spacer()
            Button(action:{
                showView = 1
            }) {
                Text("Day 1")
            }
            Spacer()
            Button(action:{
                showView = 2
            }) {
                Text("Day 2")
            }
            Spacer()
            Button(action:{
                showView = 3
            }) {
                Text("Day 3")
                    .foregroundColor(Color.black)
                        }
            Spacer()
                    }
                NavigationLink(destination: femWorkout3()){
                    ZStack{
                    Image("pic3")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(100)
                        Text("Workouts")
                            .foregroundColor(Color.black)
                            .bold()
                    }
                }
                NavigationLink(destination: testRealm1()){
                    ZStack{
                    Image("Howto")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .cornerRadius(100)
                        Text("How to")
                            .foregroundColor(Color.black)
                            .bold()
                        }
                    }
                Spacer()
                }
            }
        }
    }
}

struct testRealm: View{
    var body: some View{
        ZStack{
            Color("BackColor")
                //.ignoresSafeArea()
                .edgesIgnoringSafeArea(.all)
            VStack{
        Text("Day 1")
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack{
                VStack{
                    Text("Squat")
                videos(videoID: "i7J5h7BJ07g")
                    .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.2)
                    .cornerRadius(12)
                    .padding(.horizontal)
                }
                VStack{
                    Text("Bench Press")
                videos(videoID: "EeE3f4VWFDo")
                    .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.2)
                    .cornerRadius(12)
                    .padding(.horizontal)
                }
                VStack{
                    Text("DB Row")
                videos(videoID: "DMo3HJoawrU")
                    .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.2)
                    .cornerRadius(12)
                    .padding(.horizontal)
                }
                VStack{
                    Text("Lateral Raise")
                videos(videoID: "OuG1smZTsQQ")
                    .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.2)
                    .cornerRadius(12)
                    .padding(.horizontal)
                }
            
            }
        })
                Text("Day 2")
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack{
                        VStack{
                            Text("Deadlift")
                        videos(videoID: "AweC3UaM14o")
                            .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.2)
                            .cornerRadius(12)
                            .padding(.horizontal)
                        }
                        VStack{
                            Text("DB Shoulder Press")
                        videos(videoID: "HzIiNhHhhtA")
                            .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.2)
                            .cornerRadius(12)
                            .padding(.horizontal)
                        }
                        VStack{
                            Text("Lat Pulldown")
                        videos(videoID: "YCKPD4BSD2E")
                            .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.2)
                            .cornerRadius(12)
                            .padding(.horizontal)
                        }
                        VStack{
                            Text("DB Bicep Curl")
                        videos(videoID: "iixND1P2lik")
                            .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.2)
                            .cornerRadius(12)
                            .padding(.horizontal)
                        }
                    
                    }
                })
                Text("Day 3")
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack{
                        VStack{
                            Text("Incline Bench Press")
                        videos(videoID: "FxQ0XEoFYQk")
                            .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.2)
                            .cornerRadius(12)
                            .padding(.horizontal)
                        }
                        VStack{
                            Text("Bent Over Row")
                        videos(videoID: "6FZHJGzMFEc")
                            .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.2)
                            .cornerRadius(12)
                            .padding(.horizontal)
                        }
                        VStack{
                            Text("DB Walking Lunge")
                        videos(videoID: "eFWCn5iEbTU")
                            .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.2)
                            .cornerRadius(12)
                            .padding(.horizontal)
                        }
                        VStack{
                            Text("Tricep Pushdown")
                        videos(videoID: "iixND1P2lik")
                            .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.2)
                            .cornerRadius(12)
                            .padding(.horizontal)
                        }
                    
                    }
                })
            }
        }
    }
}


struct testRealm1: View{
    var body: some View{
        ZStack{
            Color("BackColor")
                //.ignoresSafeArea()
                .edgesIgnoringSafeArea(.all)
            VStack{
        Text("Day 1")
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack{
                VStack{
                    Text("Squat")
                videos(videoID: "i7J5h7BJ07g")
                    .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.2)
                    .cornerRadius(12)
                    .padding(.horizontal)
                }
                VStack{
                    Text("DB Bench Press")
                videos(videoID: "YQ2s_Y7g5Qk")
                    .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.2)
                    .cornerRadius(12)
                    .padding(.horizontal)
                }
                VStack{
                    Text("DB Row")
                videos(videoID: "DMo3HJoawrU")
                    .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.2)
                    .cornerRadius(12)
                    .padding(.horizontal)
                }
                VStack{
                    Text("Single Leg Hip Thrust")
                videos(videoID: "lzDgRRuBdqY")
                    .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.2)
                    .cornerRadius(12)
                    .padding(.horizontal)
                }
            
            }
        })
                Text("Day 2")
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack{
                        VStack{
                            Text("Deadlift")
                        videos(videoID: "AweC3UaM14o")
                            .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.2)
                            .cornerRadius(12)
                            .padding(.horizontal)
                        }
                        VStack{
                            Text("DB Shoulder Press")
                        videos(videoID: "HzIiNhHhhtA")
                            .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.2)
                            .cornerRadius(12)
                            .padding(.horizontal)
                        }
                        VStack{
                            Text("Lat Pulldown")
                        videos(videoID: "YCKPD4BSD2E")
                            .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.2)
                            .cornerRadius(12)
                            .padding(.horizontal)
                        }
                        VStack{
                            Text("DB Split Squat")
                        videos(videoID: "jNihW0WDIL4")
                            .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.2)
                            .cornerRadius(12)
                            .padding(.horizontal)
                        }
                    
                    }
                })
                Text("Day 3")
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack{
                        VStack{
                            Text("BB Hip Thrust")
                        videos(videoID: "EF7jXP17DPE")
                            .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.2)
                            .cornerRadius(12)
                            .padding(.horizontal)
                        }
                        VStack{
                            Text("Machine Chest Press")
                        videos(videoID: "NwzUje3z0qY")
                            .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.2)
                            .cornerRadius(12)
                            .padding(.horizontal)
                        }
                        VStack{
                            Text("Chest Supported Row")
                        videos(videoID: "_FrrYQxA6kc")
                            .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.2)
                            .cornerRadius(12)
                            .padding(.horizontal)
                        }
                        VStack{
                            Text("Stiff Leg Deadlift")
                        videos(videoID: "CN_7cz3P-1U")
                            .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.2)
                            .cornerRadius(12)
                            .padding(.horizontal)
                        }
                    
                    }
                })
            }
        }
    }
}

struct maleWorkout1: View{
    var body: some View{
        ZStack{
            Color("BackColor")
                .opacity(0.5)
                .edgesIgnoringSafeArea(.all)
        VStack{
            Text("Day 1 program").bold().font(.largeTitle)
        ZStack{
            Color("BackColor")
                .opacity(0.7)
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
        RoundedRectangle(cornerRadius: 30)
            .frame(width: 300, height: 120)
            .foregroundColor(Color.white)
            VStack{
        Text("4 sets")
        Text("4-6 reps")
        Text("Squat")
            }
}
            
        ZStack{
            Color("BackColor")
                .opacity(0.7)
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
        RoundedRectangle(cornerRadius: 30)
            .frame(width: 300, height: 120)
            .foregroundColor(Color.white)
            VStack{
        Text("3 sets")
        Text("6-8 reps")
        Text("Bench press")
    }
}
        ZStack{
            Color("BackColor")
                .opacity(0.7)
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
        RoundedRectangle(cornerRadius: 30)
            .frame(width: 300, height: 120)
            .foregroundColor(Color.white)
            VStack{
        Text("3 sets")
        Text("8-12 reps")
        Text("DB Row")
        }
}
            ZStack{
                Color("BackColor")
                    .opacity(0.7)
                    .contentShape(Rectangle())
                    .edgesIgnoringSafeArea(.all)
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 300, height: 120)
                .foregroundColor(Color.white)
                VStack{
            Text("3 sets")
            Text("10-15 reps")
            Text("Latoral Raise")
                    }
                }
            }
        }
    }
}

struct maleWorkout2: View{
    var body: some View{
        ZStack{
            Color("BackColor")
                .opacity(0.5)
                .edgesIgnoringSafeArea(.all)
        VStack{
            Text("Day 2 program").bold().font(.largeTitle)
        ZStack{
            Color("BackColor")
                .opacity(0.7)
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
        RoundedRectangle(cornerRadius: 30)
            .frame(width: 300, height: 120)
            .foregroundColor(Color.white)
            VStack{
        Text("3 sets")
        Text("4-6 reps")
        Text("Deadlift")
            }
}
            
        ZStack{
            Color("BackColor")
                .opacity(0.7)
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
        RoundedRectangle(cornerRadius: 30)
            .frame(width: 300, height: 120)
            .foregroundColor(Color.white)
            VStack{
        Text("3 sets")
        Text("8-12 reps")
        Text("BD Shoulder press")
    }
}
        ZStack{
            Color("BackColor")
                .opacity(0.7)
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
        RoundedRectangle(cornerRadius: 30)
            .frame(width: 300, height: 120)
            .foregroundColor(Color.white)
            VStack{
        Text("3 sets")
        Text("8-12 reps")
        Text("Lat pulldown")
        }
}
            ZStack{
                Color("BackColor")
                    .opacity(0.7)
                    .contentShape(Rectangle())
                    .edgesIgnoringSafeArea(.all)
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 300, height: 120)
                .foregroundColor(Color.white)
                VStack{
            Text("3 sets")
            Text("10-15 reps")
            Text("DB Bicep curl")
                    }
                }
            }
        }
    }
}

struct maleWorkout3: View{
    var body: some View{
        ZStack{
            Color("BackColor")
                .opacity(0.5)
                .edgesIgnoringSafeArea(.all)
        VStack{
            Text("Day 3 program").bold().font(.largeTitle)
        ZStack{
            Color("BackColor")
                .opacity(0.7)
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
        RoundedRectangle(cornerRadius: 30)
            .frame(width: 300, height: 120)
            .foregroundColor(Color.white)
            VStack{
        Text("4 sets")
        Text("6-10 reps")
        Text("Incline bench press")
            }
}
            
        ZStack{
            Color("BackColor")
                .opacity(0.7)
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
        RoundedRectangle(cornerRadius: 30)
            .frame(width: 300, height: 120)
            .foregroundColor(Color.white)
            VStack{
        Text("3 sets")
        Text("6-10 reps")
        Text("Bent over row")
    }
}
        ZStack{
            Color("BackColor")
                .opacity(0.7)
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
        RoundedRectangle(cornerRadius: 30)
            .frame(width: 300, height: 120)
            .foregroundColor(Color.white)
            VStack{
        Text("3 sets")
        Text("8-12 reps")
        Text("DB walking lunge")
        }
}
            ZStack{
                Color("BackColor")
                    .opacity(0.7)
                    .contentShape(Rectangle())
                    .edgesIgnoringSafeArea(.all)
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 300, height: 120)
                .foregroundColor(Color.white)
                VStack{
            Text("3 sets")
            Text("10-15 reps")
            Text("Tricep pushdown")
                    }
                }
            }
        }
    }
}

struct femWorkout1: View{
    var body: some View{
        ZStack{
            Color("BackColor")
                .opacity(0.5)
                .edgesIgnoringSafeArea(.all)
        VStack{
            Text("Day 1 program").bold().font(.largeTitle)
        ZStack{
            Color("BackColor")
                .opacity(0.7)
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
        RoundedRectangle(cornerRadius: 30)
            .frame(width: 300, height: 120)
            .foregroundColor(Color.white)
            VStack{
        Text("3 sets")
        Text("6-8 reps")
        Text("Squat")
            }
}
            
        ZStack{
            Color("BackColor")
                .opacity(0.7)
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
        RoundedRectangle(cornerRadius: 30)
            .frame(width: 300, height: 120)
            .foregroundColor(Color.white)
            VStack{
        Text("3 sets")
        Text("8-12 reps")
        Text("BD bench press")
    }
}
        ZStack{
            Color("BackColor")
                .opacity(0.7)
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
        RoundedRectangle(cornerRadius: 30)
            .frame(width: 300, height: 120)
            .foregroundColor(Color.white)
            VStack{
        Text("3 sets")
        Text("8-12 reps")
        Text("DB Row")
        }
}
            ZStack{
                Color("BackColor")
                    .opacity(0.7)
                    .contentShape(Rectangle())
                    .edgesIgnoringSafeArea(.all)
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 300, height: 120)
                .foregroundColor(Color.white)
                VStack{
            Text("3 sets")
            Text("10-15 reps")
            Text("single leg hip thrust")
                    }
                }
            }
        }
    }
}

struct femWorkout2: View{
    var body: some View{
        ZStack{
            Color("BackColor")
                .opacity(0.5)
                .edgesIgnoringSafeArea(.all)
        VStack{
            Text("Day 2 program").bold().font(.largeTitle)
        ZStack{
            Color("BackColor")
                .opacity(0.7)
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
        RoundedRectangle(cornerRadius: 30)
            .frame(width: 300, height: 120)
            .foregroundColor(Color.white)
            VStack{
        Text("3 sets")
        Text("6-8 reps")
        Text("Deadlift")
            }
}
            
        ZStack{
            Color("BackColor")
                .opacity(0.7)
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
        RoundedRectangle(cornerRadius: 30)
            .frame(width: 300, height: 120)
            .foregroundColor(Color.white)
            VStack{
        Text("3 sets")
        Text("8-12 reps")
        Text("BD Shoulder press")
    }
}
        ZStack{
            Color("BackColor")
                .opacity(0.7)
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
        RoundedRectangle(cornerRadius: 30)
            .frame(width: 300, height: 120)
            .foregroundColor(Color.white)
            VStack{
        Text("3 sets")
        Text("8-12 reps")
        Text("Lat pulldown")
        }
}
            ZStack{
                Color("BackColor")
                    .opacity(0.7)
                    .contentShape(Rectangle())
                    .edgesIgnoringSafeArea(.all)
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 300, height: 120)
                .foregroundColor(Color.white)
                VStack{
            Text("3 sets")
            Text("10-15 reps")
            Text("DB split squat")
                    }
                }
            }
        }
    }
}

struct femWorkout3: View{
    var body: some View{
        ZStack{
            Color("BackColor")
                .opacity(0.5)
                .edgesIgnoringSafeArea(.all)
        VStack{
            Text("Day 3 program").bold().font(.largeTitle)
        ZStack{
            Color("BackColor")
                .opacity(0.7)
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
        RoundedRectangle(cornerRadius: 30)
            .frame(width: 300, height: 120)
            .foregroundColor(Color.white)
            VStack{
        Text("4 sets")
        Text("10-12 reps")
        Text("BB hip thrust")
            }
}
            
        ZStack{
            Color("BackColor")
                .opacity(0.7)
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
        RoundedRectangle(cornerRadius: 30)
            .frame(width: 300, height: 120)
            .foregroundColor(Color.white)
            VStack{
        Text("3 sets")
        Text("8-12 reps")
        Text("Machine chest press")
    }
}
        ZStack{
            Color("BackColor")
                .opacity(0.7)
                .contentShape(Rectangle())
                .edgesIgnoringSafeArea(.all)
        RoundedRectangle(cornerRadius: 30)
            .frame(width: 300, height: 120)
            .foregroundColor(Color.white)
            VStack{
        Text("3 sets")
        Text("8-12 reps")
        Text("chest supported row")
        }
}
            ZStack{
                Color("BackColor")
                    .opacity(0.7)
                    .contentShape(Rectangle())
                    .edgesIgnoringSafeArea(.all)
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 300, height: 120)
                .foregroundColor(Color.white)
                VStack{
            Text("3 sets")
            Text("6-10 reps")
            Text("Stiff leg deadlift")
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
