# SwiftUI Tutorial
Created by Andrew Tran and Brandon Nguyen

## Overview
SwiftUI is a user interface toolkit that makes Swift easier to use. SwiftUI allows users to code app for apple products with using less amount of code.
In collaboration with a UX Designer, Andrew and I wanted to create an app that helps beginners who are looking to start their fitness journey. Our app creates a personalized workout program that caters towards our users' wants and needs. The app allows beginners to refer to videos in order to learn how to correctly use form and equipment thus allowing tusers' to confidently workout with the correct knowledge. 
App demo
#1: Screens that welcome users to the app.
<img width="455" alt="Screen Shot 2022-04-23 at 7 10 23 PM (1)" src="https://user-images.githubusercontent.com/71661401/165005018-96aff4a8-6c82-4bf1-8b5e-b105c3006b23.png">
<img width="455" alt="Screen Shot 2022-04-23 at 7 09 41 PM" src="https://user-images.githubusercontent.com/71661401/165005820-0814d175-cbe6-4658-965b-8a6d4a08254d.png">
#2: Promp user to ender their name and optional information such as email and phone. Must press "save info"
<img width="455" alt="Screen Shot 2022-04-23 at 7 10 36 PM" src="https://user-images.githubusercontent.com/71661401/165006012-b9bb017e-7fbc-469d-be3a-5509f0fb1cc7.png">
#3: Questionnaire that produce a program for each user.
<img width="455" alt="Screen Shot 2022-04-23 at 7 11 40 PM" src="https://user-images.githubusercontent.com/71661401/165006118-5aebef53-2988-4ed1-963a-72508fb0f66a.png">
<img width="455" alt="Screen Shot 2022-04-23 at 7 11 49 PM" src="https://user-images.githubusercontent.com/71661401/165006141-398aba1a-7d50-40a6-8374-f6cf259a8ba7.png">
<img width="455" alt="Screen Shot 2022-04-23 at 7 11 56 PM" src="https://user-images.githubusercontent.com/71661401/165006153-de856425-6f44-4be3-9690-881d470ec6b1.png">
#4: The program page allow the user to check out there program by pressing the "Workout" or check the videos by pressing the "How to"
<img width="455" alt="Screen Shot 2022-04-23 at 7 12 07 PM" src="https://user-images.githubusercontent.com/71661401/165006290-3fc8f6db-f009-477a-a040-0565fda6fe87.png">
#5: The workout page and the how to page. The work out page shows the program, the excersize and how many to do. The how to page shows the videos on how to do the workout.
<img width="455" alt="Screen Shot 2022-04-23 at 7 12 31 PM" src="https://user-images.githubusercontent.com/71661401/165006424-ce99e004-8fde-4de0-8adb-e467ec9d1a96.png">
<img width="455" alt="Screen Shot 2022-04-23 at 7 13 22 PM" src="https://user-images.githubusercontent.com/71661401/165006440-63f1c9cb-c88b-4d2b-ad29-7ad2ec538491.png">

## Getting Started
Andrew and I use xcode, the issue with xcode is that it's hard to get on windows. I have not yet used it but silver allows window user to code with swift. We used the most recent version of xcode, you'll need to update your mac to the most recent update, macOS 12.3. On how to download xcode on your mac feel free to check out (https://www.youtube.com/watch?v=114eUq7-B20&feature=emb_logo) or if you want to download and run xcode yourself it is fairly easy. Open the app store on your mac and look up xcode in the search and download. Once done feel free to grab our source code in the next portion "Time To Code!"

## Time to Code!
Step-by-step coding instructions.  This could be subdivided into multiple sections as you see fit, but basically this will be the “meat” of your tutorial.  It will consist of code snippets, text discussing the code, figures / videos of perhaps concepts that are hard to describe in text / code.  Make sure any code snippets are formatted well and readable.  Readers should also be able to copy/paste code snippets in your tutorial if they are attempting to follow along in their code editor as they read. 

First, make a SwiftUI file called ContentView, which will be the primary view for our SwiftUI app. You will notice that the project will have 2 structs made for you, ContentView and Content_Previews:

#ContentView
```
struct ContentView: View {
    var body: some View {
    }
```

#ContentView_Previews
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
<img width="150" alt="Screen Shot 2022-04-23 at 7 10 23 PM" src="https://user-images.githubusercontent.com/87389487/165002588-04518c5e-1561-4e9f-bc5f-4bb4e116df5c.png">

NavigationLink is essentially a way for us to make a segue to our next screen.

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
