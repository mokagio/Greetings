import SwiftUI

@main
struct GreetingsApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: .init(userRepository: UserDefaults.standard))
        }
    }
}
