# SwiftUI Tutorial
Created by Andrew Tran and Brandon Nguyen

## Overview
SwiftUI is a user interface toolkit that makes Swift easier to use. SwiftUI allows users to code app for apple products with using less amount of code.
In collaboration with a UX Designer, Andrew and I wanted to create an app that helps beginners who are looking to start their fitness journey. Our app creates a personalized workout program that caters towards our users' wants and needs. The app allows beginners to refer to videos in order to learn how to correctly use form and equipment thus allowing users' to confidently workout with the correct knowledge. 
App demo
#1: Screens that welcome users to the app.

<img width="150" alt="Screen Shot 2022-04-23 at 7 10 23 PM (1)" src="https://user-images.githubusercontent.com/71661401/165005018-96aff4a8-6c82-4bf1-8b5e-b105c3006b23.png">
<img width="150" alt="Screen Shot 2022-04-23 at 7 09 41 PM" src="https://user-images.githubusercontent.com/71661401/165005820-0814d175-cbe6-4658-965b-8a6d4a08254d.png">

#2: Promp user to ender their name and optional information such as email and phone. Must press "save info"

<img width="150" alt="Screen Shot 2022-04-23 at 7 10 36 PM" src="https://user-images.githubusercontent.com/71661401/165006012-b9bb017e-7fbc-469d-be3a-5509f0fb1cc7.png">

#3: Questionnaire that produce a program for each user.

<img width="150" alt="Screen Shot 2022-04-23 at 7 11 40 PM" src="https://user-images.githubusercontent.com/71661401/165006118-5aebef53-2988-4ed1-963a-72508fb0f66a.png">
<img width="150" alt="Screen Shot 2022-04-23 at 7 11 49 PM" src="https://user-images.githubusercontent.com/71661401/165006141-398aba1a-7d50-40a6-8374-f6cf259a8ba7.png">
<img width="150" alt="Screen Shot 2022-04-23 at 7 11 56 PM" src="https://user-images.githubusercontent.com/71661401/165006153-de856425-6f44-4be3-9690-881d470ec6b1.png">

#4: The program page allow the user to check out there program by pressing the "Workout" or check the videos by pressing the "How to"

<img width="150" alt="Screen Shot 2022-04-23 at 7 12 07 PM" src="https://user-images.githubusercontent.com/71661401/165006290-3fc8f6db-f009-477a-a040-0565fda6fe87.png">

#5: The workout page and the how to page. The work out page shows the program, the excersize and how many to do. The how to page shows the videos on how to do the workout.

<img width="150" alt="Screen Shot 2022-04-23 at 7 12 31 PM" src="https://user-images.githubusercontent.com/71661401/165006424-ce99e004-8fde-4de0-8adb-e467ec9d1a96.png">
<img width="150" alt="Screen Shot 2022-04-23 at 7 13 22 PM" src="https://user-images.githubusercontent.com/71661401/165006440-63f1c9cb-c88b-4d2b-ad29-7ad2ec538491.png">

## Getting Started
Andrew and I use xcode, the issue with xcode is that it's hard to get on windows. I have not yet used it but silver allows window user to code with swift. We used the most recent version of xcode, you'll need to update your mac to the most recent update, macOS 12.3. On how to download xcode on your mac feel free to check out (https://www.youtube.com/watch?v=114eUq7-B20&feature=emb_logo) or if you want to download and run xcode yourself it is fairly easy. Open the app store on your mac and look up xcode in the search and download. Once done feel free to grab our source code in the next portion "Time To Code!"

## Time to Code!
Step-by-step coding instructions.  This could be subdivided into multiple sections as you see fit, but basically this will be the “meat” of your tutorial.  It will consist of code snippets, text discussing the code, figures / videos of perhaps concepts that are hard to describe in text / code.  Make sure any code snippets are formatted well and readable.  Readers should also be able to copy/paste code snippets in your tutorial if they are attempting to follow along in their code editor as they read. 

First, make a SwiftUI file called ContentView, which will be the primary view for our SwiftUI app. You will notice that the project will have 2 structs made for you, ContentView and Content_Previews:

# ContentView
```
struct ContentView: View {
    var body: some View {
    }
```

# ContentView_Previews
```
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        .previewInterfaceOrientation(.portrait)
    }
}
```

The ContentView_Previews Struct is a pretty neat feature of SwiftUI because it gives you a preview of what your UI will look like as you add code! This Canvas will let you do some cool drag and drop options, but this tutorial will use SwiftUI's declarative syntax to write code.

To construct the first screen, we will want to first create a NavigationView within ContentView, which will have a NavigationLink nested within it:

```
struct ContentView: View {
    var body: some View {
      NavigationView{
        NavigationLink(destination: startView()) {
        
        }
      }
    }
```

NavigationLink is essentially a way for us to make a segue to our next screen.

The following image is what our first screen will look like.

<img width="150" alt="Screen Shot 2022-04-23 at 7 10 23 PM" src="https://user-images.githubusercontent.com/87389487/165002588-04518c5e-1561-4e9f-bc5f-4bb4e116df5c.png">

To get there we will need the following code to build our first UI.


```
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

```

Here we utilize ZStack and VStack to arrange the elements on our screen. Later we will use HStack as well. Here is a brief rundown on how these work:

VStack - Aligns elements on the Y-axis. Elements at the top of the stack are placed higher on the screen.
HStack - Aligns elements on the X-axis. Elements at the top of the stack are placed leftmost on the screen
ZStack - Aligns elements on the Z-axis. Elements at the top of the stack are in the background, while components at the bottom of the stack are placed on the surface.

You will also notice that this code uses closures, and SwiftUI uses a ton of closures to make code more readable.

Nested within the ZStack is our `Color()` function that has the parameter "BackColor", which will come from our assets folder, this is all to set up the background color. Below `Color()` in the ZStack is a VStack, which will allow us to place an image (from our assets again), and some text over top of our backgound color.

Speaking of color, we haven't put in our custom color yet. Go ahead and plug this code into the top of your file:

```
extension Color {
    static let teal = Color(red: 49 / 255, green: 163 / 255, blue: 159 / 255)
    static let darkPink = Color(red: 208 / 255, green: 45 / 255, blue: 208 / 255)
    static let BackColor = Color("BackColor")
}
```

We won't be using teal or darkPink in this demo, but those are there for you to play with if you want to use something else.

Now that we have our first screen ready, we will go ahead and make our second screen, which is called `startView()`.

Here is what it should look like:

<img width="150" alt="Screen Shot 2022-04-23 at 7 09 41 PM" src="https://user-images.githubusercontent.com/87389487/165169830-4dbd719e-fcfa-4284-8096-99477a429079.png">

```
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
```

This is a lot of code, but focus on the new tools we are using, which are `Spacer()`, and HStack.

You will see that every element on the screen is nested within a VStack. Below our image, we have our first HStack, which contains a single element (some text) flanked by `Spacer()`. `Spacer()` allows us to fill any space within a VStack or HStack. In this scenario, we are using it to easily center our text on the screen (placing one spacer on the left, one on the right).

Next, we will make our signUpView(), which will look like this:

<img width="150" alt="Screen Shot 2022-04-23 at 7 10 36 PM" src="https://user-images.githubusercontent.com/87389487/165184236-fdc8ff76-bfd8-4d66-8ab8-f2555673a838.png">

First, we will declare the struct for signUpView with some state variables and a helper function:

```
struct signUpView: View{

    @State var show: Bool = false
    
    @State var nameArray: [String] = []
    @State var emailArray: [String] = []
    @State var passwordArray: [String] = []
    
    @State var nameTextField: String = ""
    
    @State var emailTextField: String = ""
    
    @State var passwordTextField: String = ""
    
    func saveAllFields() {
        nameArray.append(nameTextField)
        emailArray.append(emailTextField)
        passwordArray.append(passwordTextField)
    }
}
```

We use `@State` properties so that we can pass data to our next screen, which will be stored in an @Binding property. Since our data can be passed now, let's go ahead and make the body of our signUpVew, copy and paste the code below your `@State` variables:

```
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
                self.saveAllFields()
            }
            NavigationLink(destination: welcomeView(nameArray: self.$nameArray, emailArray: self.$emailArray, passwordArray: self.$passwordArray), isActive: self.$show) {
                Text("Next")
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
```

First thing to note here are that we have a new element in our body called `TextField()` which will help us make our text fields. We are customizing the color and shade of the text fields by using modifier `.background()`, which will take a color as argument, and then we further modify the shade of the color using .opacity(). We do this for all 3 of our text fields.

Second, we are using our first button (every tap feature so far has just been a NavigationLink). `Button()` takes the name of the button as argument, and has the option for a closure to assign code for that action to perform once it is pressed. 

Third, our NavigationLink is given the shape of a button as well. We do this by using the .frame() modifier to play with the dimension of the NavigationLink. You will notice that the NavigationLink has `welcomeView()` as an argument, which in turn carries our passed user info from our `@State` properties. This will allow us to pass the `@State` properties to our next screen, `welcomeView()` which will store them as `@Binding` properties to be used.

```
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
 ```
For the `welcomeView()` first we would need to implement `@state var showView: Int = 1` this would allow us to flip from questionaire 1 to questionaire 2 without having to go to a different view. The showView is then used in out if statements that allows the screen to switch to the next questionaire by clicking an answer. To have the effect we would use `.transition(.move(edge: .bottom))` this allows the `RoundedRectangle(cornerRadius: 30)` to transition from the bottom of the screen up and there are other type of animation you could use but we chose to use `.animation(.spring())` and this gives us the animation for the transition between questionaire. We used the `ZStack` to put our questionaire that is in a `VStack` to sit on the RoundedRectangle. The `.stroke(Color.black, lineWidth: 1)` makes the frame of the rectangle colored black, and the width is the size of that line. 

<img width="150" alt="Screen Shot 2022-04-23 at 7 11 40 PM" src="https://user-images.githubusercontent.com/71661401/165006118-5aebef53-2988-4ed1-963a-72508fb0f66a.png">
<img width="150" alt="Screen Shot 2022-04-23 at 7 11 49 PM" src="https://user-images.githubusercontent.com/71661401/165006141-398aba1a-7d50-40a6-8374-f6cf259a8ba7.png"> 

To produce different workout for the male and female we had that if they chose male then `showView += 1` and if they chose female then `showView += 2`. Then it would come to the following code below. If male was pressed, showView == 3, if female was pressed, showView == 4, this would give us the outcome of diffent workouts depending on gender. The final screens are relatively the same so we will just be sticking to the male.
      
 ```
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
```

On the last quetion asking how many days the user want to work out, we would use the `NavigationLink(destination: male2())` to bring us to our next screen. We will now be going to the next screen which is the `male2()`

```
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
```

This screen doesn't have any new steps so we will be going onto the last 2 screens. You can toggle between day 1 and day 2 with the same code explained in the `welcomeView` and this screen just produce the 2 diffent type of workout programs. We will be focused on day 2 so if you click day 2 and the Workout button it'll take you to the  `maleWorkout2: View`.

```
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
```

<img width="150" alt="Screen Shot 2022-04-23 at 7 12 31 PM" src="https://user-images.githubusercontent.com/71661401/165006424-ce99e004-8fde-4de0-8adb-e467ec9d1a96.png">

This screen just uses `ZStack` and `VStack` to display the program. If you press the back button on the top left it'll bring you back to the `maleWorkout2: View` where we will now go to the `testRealm: View` by preeing the howto button.

```
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
```

<img width="150" alt="Screen Shot 2022-04-23 at 7 13 22 PM" src="https://user-images.githubusercontent.com/71661401/165006440-63f1c9cb-c88b-4d2b-ad29-7ad2ec538491.png">

In the testRealm we use a new fucntion called `ScrollView(.horizantal)` which allow the user to scroll horizantally. This allowed us to scroll though the videos that is displayed. To display the video we used the `videos(videoID: )` fucntion where you can put the videos id and play the video. To get the video id, we used youtube videos and depending on which video you want you would click it on youtube. Once you get the URL you would want to get the last random letters 
Ex: https://www.youtube.com/watch?v=dQw4w9WgXcQ we would want dQw4w9WgXcQ. To put that in the function it would be `videos(videoID: "dQw4w9WgXcQ")`. This is how to display the video on the view. Thats about it for the tutorial, if any questions feel free to leave it in the comment section of out youtube demo. https://www.youtube.com/watch?v=1b7aS_HBJ3M

## Further Discussion

[Source code for our demo](https://github.com/trandrew24/FitU-Project/tree/main)

Some things to note are that we utilized `@State`, and `@Binding` properties to pass data between views, particularly user information. While this is fine for passing views from one parent view to one child views, things can get dicey when passing down multiple levels of views. With this in mind, we think it may be more appropriate to use the `@ObservedObject` or `@environmentObject` modifiers to pass down multiple views.

When using SwiftUI, ScrollView can be a bit of a hassle when using very long lists of varied content, such as newsfeeds. Normally you would want to use a LazyVStack for most features like this, but ScrollView does not display content very smoothly when this is the case.


## See Also

[2021 SwiftUI Tutorial for Beginners (3.5 hour Masterclass)](https://www.youtube.com/watch?app=desktop&v=F2ojC6TNwws)
[Sharing Data between views and Navigation in SwiftUI2.0](https://www.youtube.com/watch?v=ILEAm0fLGVQ)
[How to use TextField in SwiftUI | Bootcamp #35](https://www.youtube.com/watch?v=-_-BNwUZrrc)
[Passing data between views in SwiftUI with Binding (SwiftUI Binding, Passing Data In SwiftUI)](https://www.youtube.com/watch?v=GDA7f7gbJts)
[How to customize stack layouts with alignment and spacing](https://www.hackingwithswift.com/quick-start/swiftui/how-to-customize-stack-layouts-with-alignment-and-spacing)
[How to use Transition in SwiftUI | Bootcamp #27](https://www.youtube.com/watch?v=X6FAIa0nJoA)
[How to embed Youtube videos in Swift UI!](https://www.youtube.com/watch?v=CX-BdDHW0Ho)
[Implementing a ScrollView in SwiftUI | Bootcamp #15](https://www.youtube.com/watch?v=9QhhpeYKjOs)
