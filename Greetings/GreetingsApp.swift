import SwiftUI

@main
struct GreetingsApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView(userName: User.get()?.name)
        }
    }
}
