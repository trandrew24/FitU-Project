# SwiftUI Tutorial
Created by Andrew Tran and Brandon Nguyen

## Overview



## Getting Started

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


Here is the first screen we will make:

<img width="150" alt="Screen Shot 2022-04-23 at 7 10 23 PM" src="https://user-images.githubusercontent.com/87389487/165002588-04518c5e-1561-4e9f-bc5f-4bb4e116df5c.png">

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


NavigationLink is essentially a way for us to make a segue to our next screen. You will notice that a common theme in SwiftUI is to use declarative programming. Closures are ubiquitous in SwiftUI to promote readable code.

The parameter startView(), will be the next screen in our app.

Within NavigationLink's closure, we will nest the following code:

```
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
```

In SwiftUI there are HStacks (horizontal axis stack), VStacks (vertical axis stack), and ZStacks (z-axis stack). These stacks allow you to align components on our screens either horizontally, vertically, or on top of each other, ala the z-axis.

Some things to note: 
Items at the bottom of the ZStack sit on top of everything else.
Items at the top of a VStack are placed higher on the screen.
Items at the top of an HStack are placed leftmost on the screen

The `Color("BackColor")` method with its associated modifiers create the background color for the screen.

The Image is embedded in the VStack using one of the images in our assets folder.


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
