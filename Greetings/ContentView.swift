import SwiftUI

struct ContentView: View {

    let viewModel: ViewModel

    var body: some View {
        // Because all the presentation content logic lives outside
        // of the SwiftUI domain, we can modify the view content
        // using the faster testing workflow without having to
        // rely on Previews and our eyes to tell us if the behavior
        // has been updated correctly.
        Text(viewModel.greetings)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {

    // The Test Double idea is useful in the context of feeding
    // real world data to a Preview, too.
    struct UserRepositoryStub: UserRepository {

        private let user: User?

        init(returning user: User?) {
            self.user = user
        }

        func get() -> User? { user }

        func save(_ user: User) throws { fatalError() }
    }

    static let userRepository = UserRepositoryStub(
        returning: User(name: "Ada")
    )

    static var previews: some View {
        ContentView(viewModel: .init(userRepository: userRepository))
    }
}
