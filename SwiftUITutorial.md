# SwiftUI Tutorial
Created by Andrew Tran and Brandon Nguyen

## Overview



## Getting Started

## Time to Code!



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
