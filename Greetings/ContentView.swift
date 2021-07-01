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
        if let userName = userName {
            Text("Hello, \(userName)!")
                .padding()
        } else {
            Text("Hello, world!")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // Using two different previews to visually validate
        // both behaviors.
        ContentView(userName: "Ada")
        ContentView()
    }
}
