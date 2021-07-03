import SwiftUI

struct ContentView: View {

    // With `private(set) var` + default value, the compiler will
    // generated an init but we'll also be able to call `.init()`
    // with no arguments, meaning there's less code to change.
    // This is useful for faster feedback, but you might want to
    // remove the default value unless it makes sense to have one
    // after you're done iterating on the implementation.
    private(set) var userName: String? = .none

    var body: some View {
        // Because all the presentation content logic lives outside
        // of the SwiftUI domain, we can modify the view content
        // using the faster testing workflow without having to
        // rely on Previews and our eyes to tell us if the behavior
        // has been updated correctly.
        Text(greetings(userName: userName))
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // Because all the logic lives outside of the SwiftUI
        // layer, we don't need more that one preview to test
        // the different view content generation scenarios.
        ContentView(userName: "Ada")
    }
}
