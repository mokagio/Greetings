import SwiftUI

@main
struct GreetingsApp: App {

    init() {
        // Debug! Uncomment the code below to simulate having a user already stored in the app.
        //
        // To delete the stored user user:
        //
        // 1. Comment the code debug code
        // 2. Delete the app from the device/Simulator
        //
//        try! User(name: "Grace").save()
    }

    var body: some Scene {
        WindowGroup {
            ContentView(userName: User.get()?.name)
        }
    }
}
